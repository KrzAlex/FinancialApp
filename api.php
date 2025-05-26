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

// ——— Acción no válida ———
http_response_code(400);
echo json_encode([
    "error"   => true,
    "message" => "Invalid action"
]);
exit();
?>
