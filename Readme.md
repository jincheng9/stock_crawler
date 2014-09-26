A very simple R API for retrieving stock data from sina finance

Prerequisite
=======
1. install.packages('RCurl')
2. library(RCurl)

Usage
=======
1. Download the R file
2. Source('get.stock.info.R')

```R
## Default S3 method:
get.stock.info(stock.code)

## Arguments
stock.code     a character string of the stock code 
               上证指数：sh000001
			   平安银行：sz000001
```
