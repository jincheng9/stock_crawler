A very simple R API for retrieving real time China's A-share stock and index data from sina finance.

Prerequisite
=======
1. install.packages('RCurl')
2. library(RCurl)

Usage
=======
1. Download the R file
2. Source('get.stock.index.info.R')

API to retrieve stock information: get.stock.info
=======
```R
## Default S3 method:
get.stock.info(stock.code)

## Arguments
stock.code     a character string of the stock code 
               平安银行sh600000
			   平安银行sz000001
## return value: a data.frame with 32 variables
1: ”大秦铁路”，股票名字；
2：27.55，今日开盘价；
3：27.25，昨日收盘价；
4：26.91，当前价格；
5：27.55，今日最高价；
6：26.20，今日最低价；
7：26.91，竞买价，即“买一”报价；
8：26.92，竞卖价，即“卖一”报价；
9：22114263，成交的股票数，由于股票交易以一百股为基本单位，所以在使用时，通常把该值除以一百；
10：589824680，成交金额，单位为“元”，为了一目了然，通常以“万元”为成交金额的单位，所以通常把该值除以一万；
11：4695，“买一”申请4695股，即47手；
12：26.91，“买一”报价；
13：57590，“买二”
14：26.90，“买二”
15：14700，“买三”
16：26.89，“买三”
17：14300，“买四”
18：26.88，“买四”
19：15100，“买五”
20：26.87，“买五”
21：3100，“卖一”申报3100股，即31手；
22：26.92，“卖一”报价
(23, 24), (25, 26), (27,28), (29, 30)分别为“卖二”至“卖四的情况”
31：”2008-01-11″，日期；
32：”15:05:32″，时间；

## sample code
stock.data <- get.stock.info('sh600000')
cat('stock symbol is: ', stock.data$V1, '\n')
cat('open price is: ', stock.data$V2, '\n')
cat('previous close price is: ', stock.data$V3, '\n')			   
cat('current price is: ', stock.data$V4, '\n')			   
```
API to retrieve index information: get.index.info
=======
```R
## Default S3 method:
get.index.info(index.code)

## Arguments
index.code     a character string of the index code 
               上证指数sh000001
			   深圳成指sz399001
## return value: a data.frame with 6 variables
1: "上证指数", 指数名称
2: 5484.677， 当前点数
3: 28.136, 当前价格
4: 0.52, 涨跌率
5: 877247, 成交量(手)
6: 15587495, 成交额(万元)

Reference for crawling China's A-share and HK share:
===
http://www.cnblogs.com/yunzi/p/3213022.html
http://wenku.baidu.com/view/8907c542b307e87101f6962b.html