#creating a data frame 
pasha = data.frame(
revenue = c(200, 230, 250, 270, 300),
cost_of_goods_sold = c(120, 130, 150, 160, 180),
operating_expenses = c(70, 75, 80, 85, 90),
cash = c(30, 35, 50, 55, 60),
accounts_receivable = c(25, 28, 30, 35, 40),
inventory = c(35, 38, 40, 45, 50),
short_term_debt = c(15, 18, 20, 25, 30),
accounts_payable = c(20, 22, 30, 35, 40),
long_term_debt = c(80, 90, 100, 110, 120),
total_assets = 400,
operating_cash_flow = c(90, 95, 100, 110, 120),
capital_expenditure = c(25, 28, 30, 35, 40),
stringsAsFactors = FALSE
  
)
  write.csv(pasha,"C:/Users/Renukaprasad K R/OneDrive/Documents/Renukaprasad/financials of a company.csv", row.names=TRUE)
  x<-read.csv("C:/Users/Renukaprasad K R/OneDrive/Documents/Renukaprasad/financials of a company.csv")
  print(x)
  
  