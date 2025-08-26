#' Major Asset Class ETF Data
#'
#' Historical price and volume data for 11 ETFs representing major asset
#' classes.
#'
#' @format ## `prices`
#' A data frame with 68,047 rows and 8 columns:
#' \describe{
#'   \item{ticker}{ETF ticker}
#'   \item{date}{Date in format YYYY-MM-DD}
#'   \item{open}{Day's opening price}
#'   \item{high}{Day's high price}
#'   \item{low}{Day's low price}
#'   \item{close}{Day's closing price}
#'   \item{volume}{Day's traded volume}
#'   \item{closeadjusted}{Day's closing price adjusted for dividends and
#'   corporate actions}
#' }
#' @source <https://www.robotwealth.com>
"prices"

#' Russell 1000 Price Data
#'
#' Historical price and volume data for Rusell 1000 constituent stocks.
#'
#' @format ## `r1000`
#' A data frame with  9,438,170 rows and 9 columns:
#' \describe{
#'   \item{ticker}{Stock ticker}
#'   \item{date}{Date in format YYYY-MM-DD}
#'   \item{open}{Day's opening price}
#'   \item{high}{Day's high price}
#'   \item{low}{Day's low price}
#'   \item{close}{Day's closing price}
#'   \item{unadjusted_close}{Day's closing price adjusted for dividends and
#'   corporate actions}
#'   \item{volume}{Day's traded volume}
#'   \item{is_universe}{Boolean indicating whether stock was in the R1000 on a
#'   particular day}
#' }
#' @source <https://www.robotwealth.com>
"r1000"

#' Spot BTC daily price and returns from Binance
#'
#' @format ## `btc`
#' A data frame with 2843 rows and 7 columns:
#' \describe{
#'   \item{Date}{Date in format YYYY-MM-DD}
#'   \item{Ticker}{ticker}
#'   \item{Close}{Day's closing price}
#'   \item{MarketCapUS}{Market cap in USD}
#'   \item{log_return}{Day's close to close log return}
#'   \item{fwd_log_return}{Next day's close to close log return}
#'   \item{fwd_simple_return}{Next day's close to close simple return}
#' }
#' @source <https://www.robotwealth.com>
"btc"

#' Hyperliquid perpetual futures OHLCV data for 10 large market cap cryptocurrencies
#'
#' @format ## `hyperliquid`
#' A data frame with 20876 rows and 8columns:
#' \describe{
#'   \item{timestamp}{Datetime in format YYYY-MM-DD HH:mm:SS}
#'   \item{symbol}{ticker}
#'   \item{open}{Day's open price}
#'   \item{close}{Day's close price}
#'   \item{high}{Day's high price}
#'   \item{low}{Day's low price}
#'   \item{volume}{Day's traded volume}
#'   \item{num_trades}{Day's number of trades}
#' }
#' @source <https://www.robotwealth.com>
"hyperliquid"
