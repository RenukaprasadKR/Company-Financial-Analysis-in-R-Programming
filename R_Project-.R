x<-read.csv("C:/Users/Renukaprasad K R/OneDrive/Documents/Renukaprasad/financials of a company.csv")

# Financial data (in millions)
revenue <-x$revenue
cost_of_goods_sold <- x$cost_of_goods_sold
operating_expenses <-x$operating_expenses
cash <- x$cash
accounts_receivable <-x$accounts_receivable
inventory <- x$inventory
short_term_debt <- x$short_term_debt
accounts_payable <- x$accounts_payable
long_term_debt <- x$long_term_debt

# Calculate additional financial metrics
gross_profit <- revenue - cost_of_goods_sold
net_income <- gross_profit - operating_expenses
total_current_assets <- cash + accounts_receivable + inventory
total_current_liabilities <- short_term_debt + accounts_payable
total_assets <- x$total_assets
total_liabilities <- total_current_liabilities + long_term_debt
equity <- total_assets - total_liabilities
operating_cash_flow <- x$operating_cash_flow
capital_expenditure <- x$capital_expenditure
free_cash_flow <- operating_cash_flow - capital_expenditure
gross_margin <- (gross_profit / revenue) * 100
return_on_equity <- (net_income / equity) *100



# Plot 1: Revenue, Gross Profit, and Operating Expenses
plot(c(2020,2021,2022,2023,2024), revenue, type = "b", col = "blue", pch = 16, ylim = c(0, 350),
     xlab = "Year", ylab = "Amount (in millions)", main = "Revenue, Gross Profit, and Operating Expenses")
lines(c(2020,2021,2022,2023,2024), gross_profit, type = "b", col = "green", pch = 17)
lines(c(2020,2021,2022,2023,2024), operating_expenses, type = "b", col = "red", pch = 18)
legend("topleft", legend = c("Revenue", "Gross Profit", "Operating Expenses"),
       col = c("blue", "green", "red"), pch = c(16, 17, 18), bty = "o",cex = .7)
Lables <-c("revenue", "gross_profit", "operating_expenses")
info <-c(length(revenue), length(gross_profit), length(operating_expenses))
pie(info ,labels = Lables,col = c("blue", "green","red"),main = "Pie Chart for Revenue, Gross Profit, and Operating Expenses",cex =1.2,radius = .8,border = "black")
legend("bottomleft", legend = c("Revenue", "Gross Profit", "Operating Expenses"),
       col = c("blue", "green", "red"), pch = c(16, 17, 18), bty = "o",cex = .7)

# Plot 2: Net Income
plot(c(2020,2021,2022,2023,2024), net_income, type = "b", col = "purple", pch = 15,
     xlab = "Year", ylab = "Net Income (in millions)", main = "Net Income")
legend("topleft", legend = c("Net Income"), col = c("blue"), pch = c(16), bty = "o",cex = .7)
barplot(net_income,names.arg = c(2020,2021,2022,2023,2024), col = "blue", main="Net Income(#Bar Graph)" , xlab = "year",ylab = "Net Income (in millions)")
hist(net_income,ylab = "Frequency", xlab = "Net Income (in millions)",col = "purple",main="Net Income(in millions)(#HISTOGRAM)")



# Plot 3: Total Current Assets and Total Current Liabilities
plot(c(2020,2021,2022,2023,2024), total_current_assets, type = "b", col = "orange", pch = 16, ylim = c(20, 160),
     xlab = "Year", ylab = "Amount (in millions)", main = "Total Current Assets and Total Current Liabilities")
lines(c(2020,2021,2022,2023,2024), total_current_liabilities, type = "b", col = "brown", pch = 17)
legend("topleft", legend = c("Total Current Assets", "Total Current Liabilities"),
       col = c("orange", "brown"), pch = c(16, 17), bty = "o",cex = .7)
barplot(total_current_assets, names.arg = c(2020,2021,2022,2023,2024), col = "orange", main="Total Current Assets" , xlab = "year",ylab = "Assets Hold")
barplot(total_current_liabilities, names.arg = c(2020,2021,2022,2023,2024), col = "brown", main="Total Current Liabilities" , xlab = "year",ylab = "liabilites")



# Plot 4: Free Cash Flow and Operating Cash Flow
plot(c(2020,2021,2022,2023,2024), free_cash_flow, type = "b", col = "cyan", pch = 16, ylim = c(60, 140),
     xlab = "Year", ylab = "Amount (in millions)", main = "Free Cash Flow and Operating Cash Flow")
lines(c(2020,2021,2022,2023,2024), operating_cash_flow, type = "b", col = "green", pch = 17)
legend("topleft", legend = c("Free Cash Flow", "Operating Cash Flow"),
       col = c("cyan", "green"), pch = c(16, 17), bty = "o",cex = .7)
hist(free_cash_flow ,ylab = "Frequency", xlab = "Net Income (in millions)",col = "cyan",main="Free Cash Flow,(#HISTOGRAM)")
hist(operating_cash_flow ,ylab = "Frequency", xlab = "Net Income (in millions)",col = "green",main="operating Cash Flow,(#HISTOGRAM)")



# Plot 5: Gross Margin and Return on Equity
plot(c(2020,2021,2022,2023,2024), gross_margin, type = "b", col = "purple", pch = 15, ylim = c(0,50),
     xlab = "Year", ylab = "Percentage", main = "Gross Margin and Return on Equity")
lines(c(2020,2021,2022,2023,2024), return_on_equity, type = "b", col = "orange", pch = 16)
legend("topright", legend = c("Gross Margin", "Return on Equity"),
       col = c("purple", "orange"), pch = c(15, 16), bty = "o",cex = .6)
barplot(gross_margin, names.arg = c(2020,2021,2022,2023,2024), col = "purple", main="Gross Margin" , xlab = "year",ylab = "Gross Margin")



#plot 6: assets and liabilities
lables <-c("Total_Current_Assets", "Total_Current_Liabilities", "Total_Assets", "Total_Liabilities")
data <-c(sum(total_current_assets), sum(total_current_liabilities), sum(total_assets), sum(total_liabilities))
pie(data,labels = lables,col = c("red", "green","yellow","blue"),main = "Assets and Liabilities",cex =1,radius = .6)
legend("bottomleft", legend = c("Total_Current_Assets", "Total_Current_Liabilities","Total_Assets", "Total_Liabilities"),
       col = c("red","green","yellow", "blue"), pch = c(15, 16), bty = "o",cex = .7)



