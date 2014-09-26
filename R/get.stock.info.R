# get the real time stock information from sina finance
# author: jincheng9

# input: stock.code: sh000001 (上证指数) sz000001 (平安银行)
# output: a vector containing the stock information

get.stock.info <- function (stock.code) {
  url <- paste0('http://hq.sinajs.cn/list=', stock.code)
  stock.info <- strsplit(getURL(url), ',')
  stock.info <- stock.info[[1]][2:(length(stock.info[[1]])-1)]
}





