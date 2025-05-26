
-- =============== LESSONS ===========================


INSERT INTO Lessons(lessonTitle, lessonDescription, lessonLevel )
VALUES
('Introduction to Personal Finance', 'Why managing money is important and how to start', 'beginner'),
('Budgeting and Expense Management', 'Budgeting techniques like the 50/30/20 rule', 'beginner'),
('Saving Money and Financial Goals', 'How to set savings goals and effective strategies', 'beginner'),
('Understanding Bank Accounts and Interest Rates', 'Types of accounts (checking, savings, money market) and how interest works', 'beginner'),
('Inflation', 'How inflation impacts savings over time', 'beginner'),

('Emergency Funds', 'How much to save and how to create a financial plan.', 'intermediate'),
('Introduction to Stocks', 'What stocks are, how they work, and why people invest in them', 'intermediate'),
('Introduction to Bonds', 'How bonds work, their benefits, and risks', 'intermediate'),
('Introduction to ETFs', 'How ETFs function and why they are popular for diversification.', 'intermediate'),
('Compound Interest and Wealth Growth', 'Why it’s the most powerful concept in finance', 'intermediate'),

('Advanced Investment Strategies', 'Asset allocation, risk management, and portfolio rebalancing', 'advanced'),
('Behavioral Finance and Investor Psychology', 'How emotions and biases affect financial decisions', 'advanced'),
('Real Estate', '', 'advanced'),
('Financial Independence and FIRE Movement', 'Strategies to achieve financial freedom', 'advanced'),
('Alternative Investments and Diversification', 'Cryptocurrencies', 'advanced');

-- ('', '', 'intermediate')

-- =============== POST ===========================

INSERT INTO Posts(postTitle, postDescription, postLink, lessonId )
VALUES
('Post Introduction to Personal Finance 1', 'Personal finance is the comprehensive practice of managing every aspect of your money—from earning and spending to saving, investing, and protecting your assets. Effective personal finance empowers you to meet life’s milestones (buying a home, funding education, retiring comfortably) while shielding against unexpected setbacks (job loss, medical emergencies). It begins with understanding income—all cash inflows such as salaries, bonuses, dividends, and interest—and extends to spending, where you distinguish between essentials (rent, utilities, groceries) and discretionary expenses (dining out, entertainment).', 'https://www.investopedia.com/terms/p/personalfinance.asp', 1),
('Post Introduction to Personal Finance 2', 'Building on that foundation, you must cultivate a robust savings habit. Experts recommend setting aside enough to cover 3–12 months of living costs in an emergency fund, ensuring financial resilience when the unexpected occurs. Once that safety net is in place, surplus funds should be channeled into investments—assets like stocks, bonds, and real estate—that offer the potential to grow your wealth over time, balanced against each vehicle’s inherent risk and volatility.', 'https://www.investopedia.com/terms/p/personalfinance.asp', 1),
('Post Introduction to Personal Finance 3', 'Equally important is protection: using insurance (health, life, property) and estate planning (wills, trusts) to safeguard your family and legacy from catastrophic events. Core strategies tie these pillars together. The 50/30/20 rule allocates 50% of take-home pay to necessities, 30% to wants, and 20% to savings or debt repayment. The mantra “pay yourself first” automates saving by directing a fixed portion of each paycheck into your emergency fund or investment accounts before any discretionary spending occurs. Regularly reviewing and adjusting your plan—every 3–6 months—ensures it stays aligned with changing incomes, goals, and life stages. ', 'https://www.investopedia.com/terms/p/personalfinance.asp', 1),

('Post Budgeting and Expense Management 1', 'Budgeting is more than just keeping track of receipts—it’s a proactive, personalized plan that aligns your spending with your financial goals. By analyzing 2–3 months of past expenses, you gain clarity on exactly where each dollar goes. This historical insight becomes the foundation for forecasting future cash flows, enabling you to allocate resources wisely rather than reacting emotionally to purchases.', 'https://www.investopedia.com/financial-edge/1109/6-reasons-why-you-need-a-budget.aspx', 2),
('Post Budgeting and Expense Management 2', 'The heart of budgeting lies in categorizing expenses into needs and wants. Needs are non-negotiables—housing, utilities, groceries, insurance—while wants include discretionary spending on dining out, streaming services, and hobbies. Once categorized, you choose a spending framework that suits your lifestyle. The ubiquitous 50/30/20 rule dedicates 50% of income to needs, 30% to wants, and 20% to savings or debt repayment. Alternatives like 70/20/10 or custom splits may better fit unique goals—just ensure housing costs stay under roughly 28% of gross income to maintain balance.', 'https://www.investopedia.com/financial-edge/1109/6-reasons-why-you-need-a-budget.aspx', 2),
('Post Budgeting and Expense Management 3', 'With targets in place, the real work begins: adjusting spending. Comparing actual outflows to planned allocations reveals areas of “lifestyle creep,” where small increases in non-essentials can silently erode your budget. Proactive cuts—whether scaling back subscription services or opting for home-cooked meals—free up funds for higher-priority goals. Anchoring these decisions in long-term objectives (buying a home, funding education, early retirement) boosts motivation and discipline.', 'https://www.investopedia.com/financial-edge/1109/6-reasons-why-you-need-a-budget.aspx', 2),
('Post Budgeting and Expense Management 4', 'Finally, a budget must remain dynamic. Life events—pay raises, a new car, expanding family—shift your financial landscape. Reviewing and revising your plan every 3–6 months ensures it stays aligned with evolving circumstances and ambitions. Regular check-ins not only keep you on track but also reinforce healthy spending habits, ultimately transforming budgeting from a one-time chore into an ongoing, empowering routine.', 'https://www.investopedia.com/financial-edge/1109/6-reasons-why-you-need-a-budget.aspx', 2),

('Post Saving Money and Financial Goals 1', 'Setting clear financial goals transforms vague wishes into actionable plans that guide your spending, saving, and investing over time. Goals fall into three time horizons:

- **Short-Term (≤1 year):** Establish a stable base with objectives like creating a monthly budget, building a starter emergency fund, paying off high-interest credit-card debt, or automating small savings contributions.
- **Mid-Term (3–5 years):** Aim for significant milestones such as paying off student loans, saving a house down-payment, purchasing a car with minimal financing, or investing in further education or professional skills.
- **Long-Term (>5 years):** Secure future prosperity by planning for retirement, paying off a mortgage, creating generational wealth, or setting up an estate plan.', 'https://www.investopedia.com/articles/personal-finance/100516/setting-financial-goals/', 3),
('Post Saving Money and Financial Goals 2', 'To turn these aims into reality, follow a structured process:

1. **Assess Your Situation:** Review income, expenses, current savings, and debts to establish a realistic starting point.
2. **Define SMART Goals:** Frame objectives as Specific, Measurable, Achievable, Relevant, and Time-bound—for example, “Save $10,000 for a home down-payment in two years by setting aside $417 monthly.”
3. **Prioritize:** Rank goals by urgency and impact (e.g., emergency fund before stock investing, high-interest debt before low-cost mortgage) to allocate resources where they matter most.
4. **Create a Financial Plan:**
    - **Budgeting:** Build a simple spending plan (50/30/20 or custom split) to control cash flow.
    - **Emergency Fund:** Target 3–6 months’ essential expenses (up to 12 months if income is irregular) kept in liquid accounts.
    - **Debt Management:** Use the Avalanche method (pay highest-rate debts first) or Snowball (pay smallest balances first) depending on your motivation style.
5. **Implement & Monitor:** Automate transfers to savings and investment accounts, review progress regularly (e.g., quarterly), and adjust your plan when life events—raises, new expenses, changing priorities—occur.', 'https://www.investopedia.com/articles/personal-finance/100516/setting-financial-goals/', 3),
('Post Saving Money and Financial Goals 3', 'By breaking ambitions into time-based buckets, applying SMART criteria, and embedding discipline through budgeting and automation, you build momentum and resilience on the path to financial security. ', 'https://www.investopedia.com/articles/personal-finance/100516/setting-financial-goals/', 3),

('Post Understanding Bank Accounts and Interest Rates 1', 'Interest on a savings account is the yield a bank pays you for keeping your deposits on hand, typically expressed as an Annual Percentage Yield (APY), which factors in compounding. There are two main types of interest: simple interest, calculated only on the principal balance, and compound interest, where earned interest is periodically added back to the principal so that future interest accrues on a growing balance. ', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 4),
('Post Understanding Bank Accounts and Interest Rates 2', 'Most savings accounts compound interest daily, monthly, or quarterly. The more frequent the compounding, the faster your balance grows: for example, at a 1% APY, daily compounding on $1,000 yields $1,010.05 after one year versus $1,010 with simple interest. Over extended periods, regular contributions amplify this effect—adding $100 monthly to that account would result in a balance of $2,216.05 after one year and $13,725.50 after ten years.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 4),
('Post Understanding Bank Accounts and Interest Rates 3', 'Banks use depositor funds to finance loans, paying you a lower rate on your savings than they charge borrowers. Savings accounts offer liquidity and safety, making them ideal for an emergency fund covering unexpected expenses. However, their returns are usually lower than riskier assets like stocks or bonds. When choosing an account, look for high APYs with no monthly fees and frequent compounding to maximize growth.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 4),

('Post Inflation 1', 'Inflation is the rate at which the general level of prices for goods and services rises over time, resulting in a decrease in purchasing power. When inflation occurs, each unit of currency buys fewer goods and services. It is usually measured annually using indicators such as the Consumer Price Index (CPI) or the Producer Price Index (PPI). Moderate inflation is considered a sign of a growing economy, while very high inflation, known as hyperinflation, can severely disrupt economic stability.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 5),
('Post Inflation 2', 'Inflation can be caused by multiple factors. Demand-pull inflation happens when demand for products outpaces supply, often during periods of strong economic growth. Cost-push inflation occurs when production costs (like wages or raw materials) rise, pushing prices higher. Another concept is built-in inflation, which reflects the ongoing cycle of wages increasing in expectation of future price increases.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 5),
('Post Inflation 3', 'Central banks, like the Federal Reserve, control inflation primarily through monetary policy—adjusting interest rates and using other financial tools. Raising interest rates, for example, can slow down inflation by making borrowing more expensive and saving more attractive.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 5),
('Post Inflation 4', 'Understanding inflation is essential for financial planning. Even a low inflation rate can erode the value of savings over time if the return on savings is lower than inflation. That’s why many investors seek returns that at least match or exceed inflation to preserve their purchasing power.', 'https://www.investopedia.com/articles/personal-finance/062315/how-interest-rates-work-savings-accounts.asp', 5),

('Post Emergency Funds 1', 'An emergency fund is a financial safety net designed to cover unexpected expenses or financial emergencies, such as medical bills, car repairs, or sudden job loss. Its main purpose is to prevent individuals from relying on high-interest debt, like credit cards or personal loans, when urgent costs arise. By having dedicated savings, people gain financial stability and peace of mind.', 'https://www.investopedia.com/terms/e/emergency_fund.asp', 6),
('Post Emergency Funds 2', 'Financial experts generally recommend setting aside three to six months’ worth of living expenses in an easily accessible account, such as a savings or money market account. The exact amount can vary depending on a person’s income stability, dependents, and fixed monthly expenses. For example, a freelancer or someone with variable income might consider saving more than six months worth.', 'https://www.investopedia.com/terms/e/emergency_fund.asp', 6),
('Post Emergency Funds 3', 'An emergency fund should be liquid and separate from everyday spending accounts. This ensures that the money remains available and untouched until truly needed. It’s also advised not to invest these funds in stocks or long-term assets, as their value could drop or be inaccessible when needed.', 'https://www.investopedia.com/terms/e/emergency_fund.asp', 6),
('Post Emergency Funds 4', 'Building an emergency fund takes time. A practical strategy is to start small—setting an initial goal (e.g., $500 or $1,000) and contributing regularly, even with small amounts. Automatic transfers can help make saving a consistent habit. Once the fund reaches the target amount, its crucial to replenish it whenever its used.', 'https://www.investopedia.com/terms/e/emergency_fund.asp', 6),

('Post Introduction to Stocks 1', 'A stock represents a share of ownership in a company and entitles the shareholder to a portion of the corporation’s assets and profits. When someone buys a stock, they become a partial owner, also known as a shareholder. Companies issue stocks to raise capital for growth, operations, or other business needs. In return, investors purchase stocks hoping the value will rise over time or that the company will pay dividends.', 'https://www.investopedia.com/terms/s/stock.asp', 7),
('Post Introduction to Stocks 2', 'There are two main types of stocks: common and preferred. Common stockholders usually have voting rights at shareholder meetings and may receive dividends, but these are not guaranteed. Preferred stockholders generally don’t have voting rights, but they receive fixed dividends and have a higher claim on assets if the company goes bankrupt.', 'https://www.investopedia.com/terms/s/stock.asp', 7),
('Post Introduction to Stocks 3', 'Stocks are typically bought and sold on stock exchanges like the New York Stock Exchange (NYSE) or NASDAQ. Their prices fluctuate based on market conditions, company performance, and broader economic trends. Investors can make money from capital gains (selling a stock for more than its purchase price) or dividends (periodic payments made from a company’s profits).', 'https://www.investopedia.com/terms/s/stock.asp', 7),
('Post Introduction to Stocks 4', 'Investing in stocks involves risks. Stock prices can fall due to poor company performance, economic downturns, or shifts in investor sentiment. However, over the long term, stocks have historically offered higher returns than many other types of investments. Diversification—spreading investments across multiple stocks—can help reduce individual stock risk.', 'https://www.investopedia.com/terms/s/stock.asp', 7),

('Post Introduction to Bonds 1', 'A **bond** is a type of fixed-income investment that represents a loan made by an investor to a borrower, typically a government or corporation. When you buy a bond, you are lending money to the issuer in exchange for **regular interest payments** (called *coupon payments*) over a fixed period. At the end of that period, known as the **maturity date**, the issuer returns the original investment amount, called the **principal** or **face value**.

Bonds are typically issued by **governments**, **municipalities**, and **corporations** to finance projects or manage debt. They are considered less risky than stocks because they offer predictable returns, although they tend to provide lower potential rewards.', 'https://www.investopedia.com/terms/b/bond.asp', 8),
('Post Introduction to Bonds  2', 'Key features of a bond include the coupon rate (the interest paid), the maturity date, and the credit quality of the issuer. A bond s price can fluctuate after issuance depending on interest rates, market demand, and the issuer’s perceived credit risk. When interest rates rise, existing bond prices usually fall, and vice versa.', 'https://www.investopedia.com/terms/b/bond.asp', 8),
('Post Introduction to Bonds 3', 'There are different types of bonds:

- **Government bonds** (e.g., U.S. Treasury bonds) are seen as very safe.
- **Corporate bonds** are riskier but usually pay higher interest.
- **Municipal bonds** are issued by local governments and often come with tax benefits.

Bonds can be traded on secondary markets before maturity. Investors may buy them to generate steady income, preserve capital, or diversify their portfolios. Despite their relative safety, bonds are not risk-free; risks include **interest rate risk**, **credit/default risk**, and **inflation risk**.', 'https://www.investopedia.com/terms/b/bond.asp', 8),

('Post Introduction to ETFs 1', 'An Exchange-Traded Fund (ETF) is a type of investment fund that is traded on stock exchanges, much like individual stocks. ETFs hold a collection of assets such as stocks, bonds, or commodities and are designed to track the performance of a specific index, sector, or asset class. For example, an ETF might aim to replicate the S&P 500, technology companies, or even gold prices.', 'https://www.investopedia.com/articles/01/082901.asp', 9),
('Post Introduction to ETFs 2', 'ETFs offer **instant diversification**, as buying one share can give exposure to a wide range of underlying assets. This makes them a popular choice for investors who want to spread risk without needing to buy many individual securities. Additionally, ETFs are generally more **cost-effective** than mutual funds because they are passively managed and often have lower expense ratios.

One major advantage of ETFs is **liquidity**: they can be bought and sold throughout the trading day at market prices, unlike mutual funds which trade only at the end of the day. This allows investors more flexibility in timing their trades. However, ETF prices can deviate slightly from the value of the underlying assets, especially during volatile market periods.', 'https://www.investopedia.com/articles/01/082901.asp', 9),
('Post Introduction to ETFs 3', 'ETFs also provide **tax efficiency**, since they typically generate fewer capital gains due to their "in-kind" creation and redemption process. This helps reduce the investor s tax burden compared to actively managed mutual funds.

While ETFs are relatively simple to buy and use, investors should still examine the **holdings**, **tracking method**, and **fees** associated with each ETF. Some ETFs use **leverage** or invest in complex assets, which may carry higher risk.', 'https://www.investopedia.com/articles/01/082901.asp', 9),

('Post Compound Interest and Wealth Growth 1', '**Compound interest** is the process by which interest is calculated not only on the initial principal but also on the accumulated interest from previous periods. This concept is often described as “interest on interest,” and over time, it can lead to exponential growth in the value of an investment or debt.

The key elements that affect compound interest are:

- **Principal**: the starting amount of money.
- **Interest rate**: the percentage at which interest is applied.
- **Compounding frequency**: how often the interest is added (e.g., annually, monthly, daily).
- **Time**: the duration for which the money is invested or borrowed.', 'https://www.investopedia.com/terms/c/compoundinterest.asp', 10),
('Post Compound Interest and Wealth Growth 2', 'The more frequently interest is compounded, the greater the total amount will grow, even if the interest rate stays the same. For example, monthly compounding will grow your money faster than annual compounding at the same rate.', 'https://www.investopedia.com/terms/c/compoundinterest.asp', 10),
('Post Compound Interest and Wealth Growth 3', 'Compound interest plays a crucial role in both **investments** and **loans**. For investors, it can significantly increase wealth over the long term. For borrowers, it can also mean rapidly increasing debt if not managed carefully. This is why understanding compound interest is essential for making smart financial decisions.

A simple rule used to estimate how long it takes to double your money with compound interest is the **Rule of 72**: divide 72 by the interest rate to get the approximate number of years needed.', 'https://www.investopedia.com/terms/c/compoundinterest.asp', 10),

('Post Advanced Investment Strategies 1', '**Portfolio rebalancing** is the process of realigning the weight of assets in a portfolio to maintain a desired level of risk and return. Over time, due to market performance, the allocation of assets (such as stocks, bonds, and cash) can drift from the original plan. Rebalancing ensures that the investor continues to follow their original investment strategy and risk tolerance.

There are several ways to rebalance:

1. **Time-based rebalancing**: Adjusting the portfolio at regular intervals (e.g., quarterly or annually), regardless of performance.
2. **Threshold-based rebalancing**: Making adjustments only when the asset allocation deviates beyond a predetermined percentage (e.g., 5%).
3. **Hybrid strategies**: Combining both time and threshold approaches to stay disciplined while being responsive to market changes.', 'https://www.investopedia.com/articles/stocks/11/rebalancing-strategies.asp', 11),
('Post Advanced Investment Strategies 2', 'Rebalancing is especially important in volatile markets where some asset classes can grow disproportionately. For example, if stocks rise significantly, they may represent a larger share of the portfolio than originally intended, increasing risk.

While rebalancing can lead to **taxable events** in non-tax-advantaged accounts (like capital gains), the benefits often outweigh the downsides. It helps to prevent **emotional decision-making**, reinforces discipline, and maintains proper diversification.', 'https://www.investopedia.com/articles/stocks/11/rebalancing-strategies.asp', 11),

('Post Behavioral Finance and Investor Psychology 1', 'Behavioral finance is a field of study that combines psychology and economics to explain why investors often act irrationally. Instead of assuming that people always make logical and objective decisions, behavioral finance recognizes that emotions, cognitive errors, and social influences often affect financial behavior.', 'https://www.investopedia.com/terms/b/behavioralfinance.asp', 12),
('Post Behavioral Finance and Investor Psychology 2', 'One major concept is confirmation bias, where investors tend to favor information that supports their existing beliefs while ignoring contradicting evidence. This can lead to overconfidence and poor decision-making.', 'https://www.investopedia.com/terms/b/behavioralfinance.asp', 12),
('Post Behavioral Finance and Investor Psychology 3', 'Another key concept is loss aversion, which suggests that people feel the pain of losses more strongly than the pleasure of equivalent gains. This can cause investors to avoid selling losing assets, hoping they’ll bounce back, or to avoid investing altogether due to fear.', 'https://www.investopedia.com/terms/b/behavioralfinance.asp', 12),
('Post Behavioral Finance and Investor Psychology 4', '**Herd behavior** is also common — people tend to follow what others are doing, especially during market booms or crashes. This can lead to bubbles or panics. Other biases include **anchoring** (relying too much on the first piece of information) and **mental accounting** (treating money differently based on its source or purpose).

By understanding these psychological influences, investors can try to make more rational decisions and avoid common pitfalls.', 'https://www.investopedia.com/terms/b/behavioralfinance.asp', 12),

('Post Real Estate 1', 'Real estate refers to land and any permanent structures or improvements attached to the land, such as houses, buildings, roads, and utility systems. It is one of the most well-known and widely used types of physical assets, and it plays a crucial role in personal wealth and the global economy.', 'https://www.investopedia.com/terms/r/realestate.asp', 13),
('Post Real Estate 2', 'There are **four main categories** of real estate:

1. **Residential real estate** – properties intended for people to live in, like single-family homes, condominiums, and apartments.
2. **Commercial real estate** – properties used for business purposes, such as office buildings, shopping centers, and hotels.
3. **Industrial real estate** – includes factories, warehouses, and other properties used for manufacturing or storage.
4. **Land** – undeveloped property, agricultural land, or plots waiting for future development.', 'https://www.investopedia.com/terms/r/realestate.asp', 13),
('Post Real Estate 3', 'Real estate can be bought, sold, rented, or developed. It is considered a long-term investment that may generate income through rent or appreciation if the value increases over time. It is also commonly used for portfolio diversification since its market behavior often differs from stocks and bonds.', 'https://www.investopedia.com/terms/r/realestate.asp', 13),
('Post Real Estate 4', 'However, investing in real estate also involves risks, such as property devaluation, market crashes, or high maintenance costs. Additionally, real estate is illiquid, meaning it cannot be quickly converted to cash without potential loss in value.', 'https://www.investopedia.com/terms/r/realestate.asp', 13),

('Post Financial Independence and FIRE Movement 1', 'The FIRE movement (Financial Independence, Retire Early) is a lifestyle and financial strategy aimed at achieving financial freedom at a much earlier age than traditional retirement. It is centered around aggressive saving, extreme frugality, and smart investing to build a large enough nest egg that allows individuals to stop working full-time, usually in their 30s or 40s.', 'https://www.investopedia.com/terms/f/financial-independence-retire-early-fire.asp', 3),
('Post Financial Independence and FIRE Movement 2', 'Followers of the FIRE movement typically save 50% to 75% of their income, far above the conventional 10–15%. They drastically reduce spending by cutting unnecessary expenses and optimizing every area of their financial life. This includes avoiding debt, choosing low-cost living arrangements, and prioritizing needs over wants.', 'https://www.investopedia.com/terms/f/financial-independence-retire-early-fire.asp', 3),
('Post Financial Independence and FIRE Movement 3', 'The ultimate goal is to accumulate enough assets—often calculated using the "25x rule" (saving 25 times one’s annual expenses)—so that one can live off investment returns, especially from index funds, real estate, or dividend stocks.', 'https://www.investopedia.com/terms/f/financial-independence-retire-early-fire.asp', 3),
('Post Financial Independence and FIRE Movement 4', 'There are different variations of FIRE:

- **LeanFIRE**: Living on a very minimalist budget post-retirement.
- **FatFIRE**: Retiring early but maintaining a more comfortable lifestyle.
- **BaristaFIRE**: Achieving partial financial independence while continuing part-time or lower-stress work.

While FIRE offers freedom and flexibility, critics argue it may lead to sacrificing quality of life during working years or being vulnerable to unexpected costs due to early withdrawal from retirement accounts or insufficient healthcare planning.', 'https://www.investopedia.com/terms/f/financial-independence-retire-early-fire.asp', 3),

('Post Alternative Investments and Diversification 1', 'Cryptocurrencies are digital or virtual currencies that use cryptography for security and operate on decentralized networks based on blockchain technology. Unlike traditional currencies issued by governments (fiat money), cryptocurrencies are not controlled by any central authority such as a central bank.', 'https://www.investopedia.com/terms/c/cryptocurrency.asp#toc-what-is-cryptocurrency', 15),
('Post Alternative Investments and Diversification 2', 'The first and most well-known cryptocurrency is Bitcoin, introduced in 2009. Since then, thousands of cryptocurrencies have emerged, including Ethereum, Litecoin, and Ripple (XRP). Each may serve different purposes, such as facilitating smart contracts (Ethereum) or improving transaction speed and cost (Litecoin, XRP).', 'https://www.investopedia.com/terms/c/cryptocurrency.asp#toc-what-is-cryptocurrency', 15),
('Post Alternative Investments and Diversification 3', 'One of the main attractions of cryptocurrencies is that they are decentralized, meaning transactions are verified by network participants (miners or validators) rather than an intermediary. This process is called mining in proof-of-work systems, where participants solve complex mathematical problems to confirm transactions and add them to the blockchain.', 'https://www.investopedia.com/terms/c/cryptocurrency.asp#toc-what-is-cryptocurrency', 15),
('Post Alternative Investments and Diversification 4', 'Cryptocurrencies can be used for **peer-to-peer payments**, **investment**, or as a store of value. However, they are often **volatile**, and their legal status varies by country. Some nations embrace them, while others restrict or ban their use.

Another risk is **security**: although the blockchain itself is considered secure, cryptocurrency exchanges and digital wallets can be vulnerable to **hacking** or **theft**.', 'https://www.investopedia.com/terms/c/cryptocurrency.asp#toc-what-is-cryptocurrency', 15),
('Post Alternative Investments and Diversification 5', 'While some investors see crypto as a path to high returns and a hedge against inflation, others view it as speculative due to price swings, regulatory uncertainty, and the relatively short track record of most tokens.', 'https://www.investopedia.com/terms/c/cryptocurrency.asp#toc-what-is-cryptocurrency', 15);




-- =============== QUIZ ===========================


INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Personal Finance Basics',
  'Personal finance is the comprehensive practice of managing every aspect of your money—from earning and spending to saving, investing, and protecting your assets. Effective personal finance empowers you to meet life’s milestones (buying a home, funding education, retiring comfortably) while shielding against unexpected setbacks (job loss, medical emergencies). It begins with understanding income—all cash inflows such as salaries, bonuses, dividends, and interest—and extends to spending, where you distinguish between essentials (rent, utilities, groceries) and discretionary expenses (dining out, entertainment).',
  'beginner',
  1
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Budgeting Fundamentals',
  'Budgeting is a proactive, personalized plan that aligns spending with financial goals. By analyzing 2–3 months of past expenses, you gain clarity on spending patterns. This historical insight becomes the foundation for forecasting future cash flows. The heart of budgeting lies in categorizing expenses into needs (housing, utilities, groceries) and wants (dining out, hobbies). Popular frameworks include the 50/30/20 rule. Regular reviews every 3–6 months keep the budget dynamic and aligned with life changes.',
  'beginner',
  2
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Setting Financial Goals',
  'Financial goals transform vague wishes into actionable plans. Short-term goals (≤1 year) include building an emergency fund. Mid-term goals (3–5 years) focus on milestones like paying off student loans. Long-term goals (>5 years) involve retirement planning. Use SMART criteria (Specific, Measurable, Achievable, Relevant, Time-bound) and prioritize goals by urgency. Automate savings and review progress quarterly.',
  'beginner',
  3
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Understanding Savings Accounts',
  'Interest on savings accounts is expressed as Annual Percentage Yield (APY), which factors in compounding. Daily compounding grows balances faster than simple interest. Savings accounts offer liquidity and safety but lower returns than stocks. Choose accounts with high APY, no fees, and frequent compounding.',
  'beginner',
  4
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Inflation Essentials',
  'Inflation is the rate at which prices rise, decreasing purchasing power. Measured via CPI or PPI. Causes include demand-pull inflation (excess demand) and cost-push inflation (rising production costs). Central banks control it through interest rates. Investors must seek returns that outpace inflation.',
  'beginner',
  5
);

-- Intermediate Level (lessonId 6-10)
INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Emergency Fund Strategies',
  'An emergency fund covers unexpected expenses like medical bills or job loss. Aim for 3–6 months of living expenses stored in a liquid account. Avoid investing it in volatile assets. Replenish after use.',
  'intermediate',
  6
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Introduction to Stocks',
  'Stocks represent ownership in a company. Common stocks offer voting rights; preferred stocks provide fixed dividends. Traded on exchanges like NYSE. Risks include market volatility. Diversification reduces risk.',
  'intermediate',
  7
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Bonds Explained',
  'Bonds are loans to governments or corporations. Investors receive coupon payments and principal at maturity. Prices inversely correlate with interest rates. Government bonds are safest. Risks include interest rate and credit risk.',
  'intermediate',
  8
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'ETF Basics',
  'ETFs are exchange-traded funds tracking indices or sectors. Benefits include diversification, liquidity, and lower fees than mutual funds. Tax-efficient due to in-kind redemptions. Avoid leveraged ETFs unless risk-tolerant.',
  'intermediate',
  9
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Power of Compound Interest',
  'Compound interest grows money exponentially by reinvesting earned interest. Key factors: principal, rate, compounding frequency, and time. Rule of 72 estimates doubling time. Critical for long-term wealth and debt management.',
  'intermediate',
  10
);

-- Advanced Level (lessonId 11-15)
INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Portfolio Rebalancing',
  'Rebalancing maintains target asset allocations. Methods include time-based (quarterly) or threshold-based (5% deviation). Avoids unintended risk drift. Tax implications in non-retirement accounts.',
  'advanced',
  11
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Behavioral Finance Insights',
  'Studies psychological biases like confirmation bias, loss aversion, and herd behavior. Helps investors avoid irrational decisions (e.g., holding losers too long). Anchoring and mental accounting are common pitfalls.',
  'advanced',
  12
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Real Estate Investing',
  'Real estate includes residential, commercial, industrial properties, and land. Benefits: rental income and appreciation. Risks: illiquidity, market downturns. Diversifies portfolios away from stocks/bonds.',
  'advanced',
  13
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'FIRE Movement Principles',
  'Financial Independence Retire Early (FIRE) prioritizes aggressive saving (50–75% income) and investing. Uses 25x rule to calculate retirement needs. Variations: LeanFIRE, FatFIRE. Criticized for potential lifestyle trade-offs.',
  'advanced',
  14
);

INSERT INTO Quizs(quizTitle, quizOverview, quizLevel, lessonId)
VALUES (
  'Cryptocurrency Overview',
  'Decentralized digital currencies using blockchain. Bitcoin pioneered the space. Uses include peer-to-peer payments and smart contracts. High volatility and regulatory risks. Security depends on wallets/exchanges.',
  'advanced',
  15
);





-- ============== Question ==============


-- QuizId 1 (Beginner - Personal Finance Basics)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Area distinguishing essentials vs discretionary spending',
  'Which area of personal finance focuses on distinguishing between essentials and discretionary spending?',
  1
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Emergency fund coverage',
  'How many months of living expenses should an emergency found ideally cover?',
  1
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  '"Pay yourself first" strategy',
  'What does the "pay yourself first" strategy primarily accomplish?',
  1
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  '50/30/20 rule allocation',
  'According to the 50/30/20 rule, what percentage of take-home pay is allocated to wants?',
  1
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Protective measure and investment',
  'Which of the following combinations represents both a protective measure and an investment?',
  1
);

-- QuizId 2 (Beginner - Budgeting Fundamentals)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Benefit of analyzing past expenses',
  'What is the primary benefit of analyzing 2–3 months of past expenses when budgeting?',
  2
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Utilities and groceries category',
  'Which expense category includes utilities and groceries?',
  2
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  '50/30/20 savings allocation',
  'Under the 50/30/20 rule, which percentage of income is allocated to savings or debt repayment?',
  2
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Gradual increase in discretionary spending',
  'What term describes the gradual increase in discretionary spending as income rises?',
  2
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Budget review frequency',
  'How often does the article recommend you review and adjust your budget?',
  2
);

-- QuizId 3 (Beginner - Setting Financial Goals)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Mid-term financial goal example',
  'Which of the following is a mid-term financial goal?',
  3
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'SMART goal "M" meaning',
  'What does the “M” in a SMART goal stand for?',
  3
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Prioritizing goals importance',
  'Why is prioritizing goals important?',
  3
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Debt-repayment strategy focus',
  'Which debt-repayment strategy focuses on tackling the highest interest rates first?',
  3
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Financial plan review frequency',
  'How often should you review and adjust your financial plan according to the summary?',
  3
);

-- QuizId 4 (Beginner - Understanding Savings Accounts)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'APY definition and importance',
  'What does APY stand for, and why is it important?',
  4
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Simple vs compound interest',
  'Which statement correctly contrasts simple and compound interest?',
  4
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Daily compounding advantage',
  'Why might daily compounding yield more than simple interest, even at the same nominal rate?',
  4
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Savings with monthly contributions',
  'If you start with $1,000 and then add $100 per month to a savings account earning 1% APY compounded daily, what approximate balance will you have after one year?',
  4
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Savings account drawback',
  'Which of the following is NOT a benefit of a savings account noted in the summary?',
  4
);

-- QuizId 5 (Beginner - Inflation Essentials)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Inflation definition',
  'What is inflation?',
  5
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Common inflation measure',
  'Which of the following is a common measure of inflation?',
  5
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Demand-pull inflation cause',
  'What typically causes demand-pull inflation?',
  5
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Central bank inflation control',
  'How do central banks often try to control inflation?',
  5
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Inflation financial planning impact',
  'Why is inflation important to consider in financial planning?',
  5
);

-- QuizId 6 (Intermediate - Emergency Fund Strategies)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Emergency fund purpose',
  'What is the main purpose of an emergency fund?',
  6
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Emergency fund savings target',
  'How much should most people aim to save in an emergency fund?',
  6
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Emergency fund storage',
  'Where should you store your emergency fund?',
  6
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Stock market risk for emergency fund',
  'Why is it not recommended to invest your emergency fund in the stock market?',
  6
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Replenishing emergency fund',
  'What should you do after using part of your emergency fund?',
  6
);

-- QuizId 7 (Intermediate - Introduction to Stocks)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Stock ownership meaning',
  'What does owning a stock represent?',
  7
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Common vs preferred stocks',
  'What is one key difference between common and preferred stocks?',
  7
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Earning from stocks',
  'How can investors earn money from stocks?',
  7
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Stock trading platforms',
  'Where are stocks typically traded?',
  7
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Risk reduction strategy',
  'What strategy helps reduce risk in stock investing?',
  7
);

-- QuizId 8 (Intermediate - Bonds Explained)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Bond definition',
  'What is a bond?',
  8
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Bond maturity benefits',
  'What does the investor receive when holding a bond until maturity?',
  8
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Bond prices vs interest rates',
  'What typically happens to bond prices when interest rates rise?',
  8
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Safest bond type',
  'Which of the following is generally the safest type of bond?',
  8
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Bond investment risk',
  'What is one key risk of investing in bonds?',
  8
);

-- QuizId 9 (Intermediate - ETF Basics)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'ETF definition',
  'What is an ETF?',
  9
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'ETF diversification benefit',
  'What is a key benefit of investing in an ETF?',
  9
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'ETF trading vs mutual funds',
  'How are ETFs traded compared to mutual funds?',
  9
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'ETF expense ratios',
  'Which of the following is typically lower for ETFs compared to mutual funds?',
  9
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'ETF tax efficiency',
  'What is one reason ETFs are considered tax-efficient?',
  9
);

-- QuizId 10 (Intermediate - Compound Interest)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Compound interest definition',
  'What does compound interest mean?',
  10
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Compound interest factors',
  'Which factor does not directly affect compound interest?',
  10
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Compounding frequency impact',
  'What happens when the compounding frequency increases?',
  10
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Rule of 72 calculation',
  'If you invest $1,000 at a 6% annual interest rate, how long will it take to double using the Rule of 72?',
  10
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Compound importance for investors/borrowers',
  'Why is compound interest important to understand for both investors and borrowers?',
  10
);

-- QuizId 11 (Advanced - Portfolio Rebalancing)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Rebalancing purpose',
  'What is the main purpose of portfolio rebalancing?',
  11
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Rebalancing method example',
  'Which of the following is a common rebalancing method?',
  11
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Rebalancing tax downside',
  'What is a possible downside of rebalancing in a taxable account?',
  11
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Unbalanced portfolio risk',
  'What happens if a portfolio is not rebalanced over time?',
  11
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Hybrid rebalancing strategy',
  'What does a hybrid rebalancing strategy involve?',
  11
);

-- QuizId 12 (Advanced - Behavioral Finance)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Behavioral finance focus',
  'What does behavioral finance primarily study?',
  12
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Confirmation bias definition',
  'What is confirmation bias?',
  12
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Loss aversion implication',
  'What does the concept of loss aversion imply?',
  12
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Herd behavior consequence',
  'Herd behavior in investing can lead to:',
  12
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Anchoring example',
  'What is an example of anchoring in finance?',
  12
);

-- QuizId 13 (Advanced - Real Estate Investing)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Real estate components',
  'What is considered part of real estate?',
  13
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Commercial real estate example',
  'Which of the following is an example of commercial real estate?',
  13
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Real estate financial benefit',
  'What is one financial benefit of investing in real estate?',
  13
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Real estate diversification benefit',
  'Why is real estate considered a good tool for portfolio diversification?',
  13
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Real estate disadvantage',
  'Which of the following is a disadvantage of real estate investment?',
  13
);

-- QuizId 14 (Advanced - FIRE Movement)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'FIRE movement goal',
  'What does the FIRE movement primarily aim to achieve?',
  14
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'FIRE savings target',
  'How much of their income do FIRE followers typically aim to save?',
  14
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  '25x rule purpose',
  'What is the "25x rule" used for in the FIRE movement?',
  14
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'LeanFIRE emphasis',
  'What does LeanFIRE emphasize?',
  14
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'FIRE criticism',
  'Which of the following is a criticism of the FIRE movement?',
  14
);

-- QuizId 15 (Advanced - Cryptocurrencies)
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Cryptocurrency foundation',
  'What technology is the foundation of cryptocurrencies?',
  15
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Bitcoin description',
  'Which of the following best describes Bitcoin?',
  15
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Mining purpose',
  'What is the primary purpose of mining in cryptocurrency networks?',
  15
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Cryptocurrency risk factor',
  'Why are cryptocurrencies considered high-risk investments?',
  15
);
INSERT INTO Questions(questionTitle, questionBody, QuizId) 
VALUES (
  'Cryptocurrency non-use case',
  'Which of the following is NOT a common use of cryptocurrency?',
  15
);
