INSERT INTO Users (username, sex, name, surname, birthdate, Email, AccountPassword) VALUES
('john_doe', 'M', 'John', 'Doe', '1990-05-15', 'john.doe@email.com', 'password123'),
('jane_smith', 'F', 'Jane', 'Smith', '1985-08-22', 'jane.smith@email.com', 'securepass'),
('alex_wong', 'M', 'Alex', 'Wong', '1995-03-10', 'alex.wong@email.com', 'alex1234'),
('emily_j', 'F', 'Emily', 'Johnson', '1992-11-30', 'emily.j@email.com', 'emily2023'),
('mike_brown', 'M', 'Michael', 'Brown', '1988-07-18', 'mike.b@email.com', 'mike7890'),
('sara_miller', 'F', 'Sara', 'Miller', '1993-04-25', 'sara.m@email.com', 'sara4567'),
('david_k', 'M', 'David', 'Kim', '1991-09-12', 'david.k@email.com', 'davidpass'),
('lisa_green', 'F', 'Lisa', 'Green', '1987-12-05', 'lisa.g@email.com', 'lisa9876'),
('ryan_chen', 'M', 'Ryan', 'Chen', '1994-06-20', 'ryan.c@email.com', 'ryan2023'),
('amy_wilson', 'F', 'Amy', 'Wilson', '1996-01-15', 'amy.w@email.com', 'amypass1'),
('tom_lee', 'M', 'Thomas', 'Lee', '1989-10-08', 'tom.lee@email.com', 'tom12345'),
('olivia_p', 'F', 'Olivia', 'Parker', '1997-02-28', 'olivia.p@email.com', 'olivia2023'),
('steve_roger', 'M', 'Steve', 'Rogers', '1986-07-04', 'steve.r@email.com', 'captain1'),
('natalie_r', 'F', 'Natalie', 'Rossi', '1998-05-19', 'natalie.r@email.com', 'natalie123'),
('chris_evans', 'M', 'Chris', 'Evans', '1990-11-11', 'chris.e@email.com', 'chrispass'),
('mia_k', 'F', 'Mia', 'Khalifa', '1993-08-25', 'mia.k@email.com', 'mia2023'),
('daniel_s', 'M', 'Daniel', 'Smith', '1987-04-30', 'daniel.s@email.com', 'daniel456'),
('sophia_l', 'F', 'Sophia', 'Lopez', '1995-09-17', 'sophia.l@email.com', 'sophia789'),
('kevin_m', 'M', 'Kevin', 'Martin', '1992-03-22', 'kevin.m@email.com', 'kevinpass'),
('emma_w', 'F', 'Emma', 'Williams', '1994-12-10', 'emma.w@email.com', 'emma2023'),
('robert_t', 'M', 'Robert', 'Taylor', '1988-06-15', 'robert.t@email.com', 'robert123'),
('laura_h', 'F', 'Laura', 'Harris', '1996-10-28', 'laura.h@email.com', 'laura456');








INSERT INTO Quizs (quizTitle, quizOverview, quizLevel) VALUES
('Budgeting Basics Quiz', 'Test your knowledge of fundamental budgeting concepts.', 'beginner'),
('Saving Habits Assessment', 'Evaluate your understanding of effective saving strategies.', 'beginner'),
('Debt Management Test', 'Check your knowledge of debt reduction techniques.', 'intermediate'),
('Investing Fundamentals Quiz', 'Assess your grasp of basic investment principles.', 'beginner'),
('Retirement Planning Quiz', 'Test your retirement savings knowledge.', 'intermediate'),
('Credit Score Challenge', 'How well do you understand credit factors?', 'intermediate'),
('Tax Knowledge Test', 'Assess your understanding of basic tax concepts.', 'intermediate'),
('Real Estate Finance Quiz', 'Test your knowledge of property financials.', 'advanced'),
('Insurance IQ', 'How well do you understand insurance products?', 'intermediate'),
('Student Loan Quiz', 'Test your knowledge of education financing.', 'intermediate'),
('Behavioral Finance Quiz', 'Assess your understanding of financial psychology.', 'advanced'),
('Side Hustle Challenge', 'Test your knowledge of generating extra income.', 'intermediate'),
('Crypto Knowledge Test', 'How well do you understand cryptocurrency?', 'advanced'),
('College Savings Quiz', 'Test your knowledge of education funding options.', 'intermediate'),
('Salary Negotiation Quiz', 'Assess your negotiation knowledge.', 'advanced'),
('Couples Finance Test', 'How well do you manage money as a couple?', 'intermediate'),
('Early Retirement Quiz', 'Test your FI/RE knowledge.', 'advanced'),
('Kids Financial Literacy', 'Assess your ability to teach kids about money.', 'beginner'),
('Fraud Prevention Quiz', 'Test your scam recognition skills.', 'beginner'),
('Sustainable Investing Test', 'How well do you understand ESG investing?', 'advanced'),
('Healthcare Costs Quiz', 'Test your knowledge of retirement medical expenses.', 'advanced'),
('Compound Interest Challenge', 'Assess your understanding of compounding.', 'beginner');



INSERT INTO Questions (questionTitle, questionBody, QuizId) VALUES
('Budgeting Definition', 'What is the primary purpose of a personal budget?', 1),
('50/30/20 Rule', 'What does the 50/30/20 budgeting rule recommend?', 1),
('Emergency Fund', 'How many months of expenses should an emergency fund cover?', 2),
('Saving Accounts', 'Which type of account typically offers higher interest for savings?', 2),
('Debt Snowball', 'What is the debt snowball method?', 3),
('Interest Rates', 'When prioritizing debt repayment, which debts should you pay first?', 3),
('Stock Market', 'What does the S&P 500 index represent?', 4),
('Diversification', 'Why is diversification important in investing?', 4),
('401(k) Matching', 'What is employer matching in a 401(k) plan?', 5),
('Roth IRA', 'What is the main advantage of a Roth IRA?', 5),
('Credit Score Range', 'What is the range for FICO credit scores?', 6),
('Credit Utilization', 'What percentage of your credit limit should you ideally use?', 6),
('Tax Brackets', 'How do progressive tax brackets work?', 7),
('Standard Deduction', 'What is the standard deduction for single filers in 2023?', 7),
('Mortgage Types', 'What is the difference between fixed and adjustable rate mortgages?', 8),
('Home Equity', 'How is home equity calculated?', 8),
('Term Life Insurance', 'What does term life insurance provide?', 9),
('Deductible Meaning', 'What is an insurance deductible?', 9),
('Student Loan Types', 'What is the difference between subsidized and unsubsidized loans?', 10),
('Income-Driven Plans', 'What are income-driven repayment plans?', 10),
('Anchoring Bias', 'What is anchoring bias in behavioral finance?', 11),
('Loss Aversion', 'How does loss aversion affect decision making?', 11),
('Side Hustle Taxes', 'Do you need to pay taxes on side hustle income?', 12),
('Freelance Expenses', 'What expenses can freelancers typically deduct?', 12),
('Blockchain', 'What is blockchain technology?', 13),
('Bitcoin Halving', 'What happens during a Bitcoin halving event?', 13),
('529 Plans', 'What is a 529 college savings plan?', 14),
('Coverdell ESA', 'How does a Coverdell ESA differ from a 529 plan?', 14),
('Negotiation Timing', 'When is the best time to negotiate salary?', 15),
('Total Compensation', 'What components make up total compensation?', 15),
('Joint Accounts', 'What are the pros and cons of joint bank accounts?', 16),
('Financial Goals', 'Why is it important for couples to align financial goals?', 16),
('4% Rule', 'What is the 4% rule in retirement planning?', 17),
('Roth Conversion', 'What is a Roth conversion ladder?', 17),
('Allowance System', 'What are effective ways to structure allowances for kids?', 18),
('Teaching Savings', 'At what age should children start learning about saving?', 18),
('Phishing Scams', 'How can you identify a phishing email?', 19),
('Investment Scams', 'What are red flags of investment scams?', 19),
('ESG Criteria', 'What does ESG stand for in investing?', 20),
('Impact Investing', 'How does impact investing differ from traditional investing?', 20),
('Medicare Parts', 'What are the different parts of Medicare?', 21),
('Long-Term Care', 'What is long-term care insurance?', 21),
('Compound Formula', 'What is the formula for compound interest?', 22),
('Rule of 72', 'What does the Rule of 72 help you calculate?', 22);




INSERT INTO Options (optionTitle, correctness, questionId) VALUES
('To track income and expenses', TRUE, 1),
('To impress your friends', FALSE, 1),
('To make more money', FALSE, 1),
('50% needs, 30% wants, 20% savings', TRUE, 2),
('50% savings, 30% needs, 20% wants', FALSE, 2),
('3-6 months', TRUE, 3),
('1-2 months', FALSE, 3),
('High-yield savings account', TRUE, 4),
('Checking account', FALSE, 4),
('Paying smallest debts first', TRUE, 5),
('Paying highest interest debts first', FALSE, 5),
('Debts with highest interest rates', TRUE, 6),
('Debts with smallest balances', FALSE, 6),
('500 large US companies', TRUE, 7),
('All US stocks', FALSE, 7),
('Reduces risk', TRUE, 8),
('Increases returns', FALSE, 8),
('Employer contributes matching funds', TRUE, 9),
('Government matching program', FALSE, 9),
('Tax-free withdrawals in retirement', TRUE, 10),
('Higher contribution limits', FALSE, 10),
('300-850', TRUE, 11),
('0-1000', FALSE, 11),
('Below 30%', TRUE, 12),
('As much as possible', FALSE, 12),
('Higher incomes pay higher rates', TRUE, 13),
('Everyone pays same rate', FALSE, 13),
('$12,950', TRUE, 14),
('$25,900', FALSE, 14),
('Fixed has constant rate, ARM changes', TRUE, 15),
('ARM is always better', FALSE, 15),
('Home value minus mortgage balance', TRUE, 16),
('Just the down payment', FALSE, 16),
('Coverage for specific period', TRUE, 17),
('Lifetime coverage', FALSE, 17),
('Amount you pay before coverage', TRUE, 18),
('Maximum payout amount', FALSE, 18),
('Subsidized has interest paid while in school', TRUE, 19),
('No difference', FALSE, 19),
('Payments based on income', TRUE, 20),
('Payments based on loan amount', FALSE, 20),
('Relying too much on first information', TRUE, 21),
('Always choosing safe options', FALSE, 21),
('People fear losses more than gains', TRUE, 22),
('People prefer immediate rewards', FALSE, 22),
('Yes, if over $400', TRUE, 23),
('No, side income is tax-free', FALSE, 23),
('Business expenses', TRUE, 24),
('Personal expenses', FALSE, 24),
('Decentralized ledger technology', TRUE, 25),
('Type of bank account', FALSE, 25),
('Mining reward halves', TRUE, 26),
('Bitcoin value halves', FALSE, 26),
('Tax-advantaged education savings', TRUE, 27),
('Retirement account', FALSE, 27),
('Lower contribution limits', TRUE, 28),
('No difference', FALSE, 28),
('When starting new job', TRUE, 29),
('Never', FALSE, 29),
('Salary, bonuses, benefits', TRUE, 30),
('Just base salary', FALSE, 30),
('Shared access but shared liability', TRUE, 31),
('No benefits', FALSE, 31),
('Prevents conflicts', TRUE, 32),
('Not important', FALSE, 32),
('Safe withdrawal rate', TRUE, 33),
('Savings goal', FALSE, 33),
('Converting traditional IRA to Roth', TRUE, 34),
('Roth to traditional conversion', FALSE, 34),
('Tied to chores', TRUE, 35),
('Given unconditionally', FALSE, 35),
('As early as possible', TRUE, 36),
('Not until teens', FALSE, 36),
('Urgent requests for info', TRUE, 37),
('Always legitimate', FALSE, 37),
('Guaranteed high returns', TRUE, 38),
('Transparent fees', FALSE, 38),
('Environmental, Social, Governance', TRUE, 39),
('Earnings, Sales, Growth', FALSE, 39),
('Seeks social/environmental impact', TRUE, 40),
('No difference', FALSE, 40),
('A, B, C, D', TRUE, 41),
('Only Part A', FALSE, 41),
('Covers extended care needs', TRUE, 42),
('Same as health insurance', FALSE, 42),
('A = P(1 + r/n)^(nt)', TRUE, 43),
('Simple interest formula', FALSE, 43),
('Time to double investment', TRUE, 44),
('Future value', FALSE, 44);













































































