# get the real time stock information from sina finance
# author: jincheng9

# input: stock.code: sh000001 (上证指数) sz000001 (平安银行)
# output: a data.frame containing the stock information

get.stock.info <- function (stock.code) {
  
  # get the stock information using http/js interface
  url <- paste0('http://hq.sinajs.cn/list=', stock.code)
  stock.info <- strsplit(getURL(url), ',')
  stock.info <- stock.info[[1]][2:(length(stock.info[[1]])-1)]
  
  # convert a character string to a data.frame
  stock.data <- data.frame(V1=0)
  for (i in 1:length(stock.info)) {
    stock.data[[i]] <- stock.info[i]
  }
  
  # convert string to float, except for the date and time
  stock.data[1:(length(stock.info)-2)] <- as.numeric(stock.data[1:(length(stock.info)-2)])
  
  # return the data 
  stock.data
}



