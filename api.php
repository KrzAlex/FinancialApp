<?php
// Siempre devolver JSON
header("Content-Type: application/json; charset=UTF-8");

// ——— Configuración de la base de datos ———
$host = "mysql-mypersonalfinance.alwaysdata.net";
$db   = "mypersonalfinance_database";
$user = "412503_andrea";   // ← tu usuario de AlwaysData
$pass = "campodigrano";    // ← tu contraseña de AlwaysData

// ——— Conexión ———
$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode([
        "error"   => true,
        "message" => "Database connection failed: " . $conn->connect_error
    ]);
    exit();
}

// ——— Determinar acción ———
$action = $_POST['action'] ?? '';

// ——— Ruta: login ———
if ($action === 'login') {
    $email = $_POST['email'] ?? '';
    $password = $_POST['password'] ?? '';

    // Validación básica
    if (empty($email) || empty($password)) {
        http_response_code(400);
        echo json_encode([
            "error"   => true,
            "message" => "Username and password required"
        ]);
        exit();
    }

    // Consulta preparada (evita SQL injection)
    $stmt = $conn->prepare(
        "SELECT userId, username 
         FROM Users 
         WHERE email = ? AND AccountPassword = ?"
    );
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Login OK
        $userData = $result->fetch_assoc();
        echo json_encode([
            "error"   => false,
            "message" => "Login successful",
            "data"    => [
                "id"       => $userData['userId'],
                "username" => $userData['username']
            ]
        ]);
    } else {
        // Credenciales inválidas
        http_response_code(401);
        echo json_encode([
            "error"   => true,
            "message" => "Invalid username or password"
        ]);
    }

    $stmt->close();
    $conn->close();
    exit();
}
// ——— Ruta: getLessonByDiff ———

if ($action === 'getLessonByDiff') {
    $difficulty = $_POST['difficulty'] ?? '';

    // Validación básica
    $allowed = ['beginner', 'intermediate', 'advanced'];
    if (!in_array($difficulty, $allowed, true)) {
        http_response_code(400);
        echo json_encode([
            "error"   => true,
            "message" => "Difficulty invalid. Allowed values: beginner, intermediate, advanced"
        ]);
        exit();
    }

    // Consulta preparada
    $stmt = $conn->prepare(
        "SELECT lessonTitle
         FROM Lessons
         WHERE lessonLevel = ?"
    );
    $stmt->bind_param("s", $difficulty);
    $stmt->execute();
    $result = $stmt->get_result();

    $titles = [];
    while ($row = $result->fetch_assoc()) {
        $titles[] = $row['lessonTitle'];
    }

    echo json_encode([
        "error"   => false,
        "message" => "Lecciones obtenidas",
        "data"    => $titles
    ]);

    $stmt->close();
    $conn->close();
    exit();
}

// ——— Ruta: getPostsByLesson ———
if ($action === 'getPostsByLesson') {
    $title = $_POST['title'] ?? '';

    // Validación rápida
    if (empty($title)) {
        http_response_code(400);
        echo json_encode([
            "error"   => true,
            "message" => "Debe proporcionar el título de la lección"
        ]);
        exit();
    }

    // Consulta preparada: buscamos lessonId por title y luego los posts
    $stmt = $conn->prepare(
        "SELECT p.postId, p.postTitle, p.postDescription, p.postLink
         FROM Posts p
         JOIN Lessons l ON p.lessonId = l.lessonId
         WHERE l.lessonTitle = ?"
    );
    $stmt->bind_param("s", $title);
    $stmt->execute();
    $result = $stmt->get_result();

    $posts = [];
    while ($row = $result->fetch_assoc()) {
        $posts[] = [
            "id"          => (int)$row['postId'],
            "title"       => $row['postTitle'],
            "description" => $row['postDescription'],
            "link"        => $row['postLink']
        ];
    }

    echo json_encode([
        "error"   => false,
        "message" => "Posts obtenidos",
        "data"    => $posts
    ]);

    $stmt->close();
    $conn->close();
    exit();
}

// ——— Ruta: getQuestionByLesson ———

if ($action === 'getQuestionByLesson') {
    $title = $_POST['title'] ?? '';

    // Validación
    if (empty($title)) {
        http_response_code(400);
        echo json_encode([
            "error"   => true,
            "message" => "You need to send a Lesson tittle"
        ]);
        exit();
    }

    // 1) Obteain lessonId from Lessons
    $stmtL = $conn->prepare(
        "SELECT lessonId
         FROM Lessons
         WHERE lessonTitle = ?"
    );
    $stmtL->bind_param("s", $title);
    $stmtL->execute();
    $resL = $stmtL->get_result();
    if (!($rowL = $resL->fetch_assoc())) {
        // Lesson dosnt exist
        echo json_encode([
            "error"   => true,
            "message" => "Lesson not found",
            "data"    => null
        ]);
        exit();
    }
    $lessonId = (int)$rowL['lessonId'];
    $stmtL->close();

    // 2) Get a random question from QuizId = lessonId
    $stmtQ = $conn->prepare(
        "SELECT questionId, questionTitle, questionBody
         FROM Questions
         WHERE QuizId = ?
         ORDER BY RAND()
         LIMIT 1"
    );
    $stmtQ->bind_param("i", $lessonId);
    $stmtQ->execute();
    $resQ = $stmtQ->get_result();
    if (!($q = $resQ->fetch_assoc())) {
        echo json_encode([
            "error"   => true,
            "message" => "No questions for this lesson",
            "data"    => null
        ]);
        exit();
    }
    $qid = (int)$q['questionId'];
    $stmtQ->close();

    // 3) Getting options for this question
    $stmtO = $conn->prepare(
        "SELECT optionId, optionTitle, correctness
         FROM Options
         WHERE questionId = ?"
    );
    $stmtO->bind_param("i", $qid);
    $stmtO->execute();
    $resO = $stmtO->get_result();

    $opts = [];
    while ($o = $resO->fetch_assoc()) {
        $opts[] = [
            "id"      => (int)$o['optionId'],
            "text"    => $o['optionTitle'],
            "correct" => (bool)$o['correctness']
        ];
    }
    $stmtO->close();
    $conn->close();

    // 4) Respuesta final
    $question = [
        "id"      => $qid,
        "title"   => $q['questionTitle'],
        "body"    => $q['questionBody'],
        "options" => $opts
    ];

    echo json_encode([
        "error"   => false,
        "message" => "Pregunta obtenida",
        "data"    => $question
    ]);
    exit();
}

// ——— Acción no válida ———
http_response_code(400);
echo json_encode([
    "error"   => true,
    "message" => "Invalid action"
]);
exit();
?>
