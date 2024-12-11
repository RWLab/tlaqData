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
