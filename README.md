# tlaqData
Data used in Trade Like a Quant Bootcamp.

Includes price history for ETFs representing major asset classes
and Russell 1000 constituents.

The data is static (ie not updated).

## Usage

To load the asset class ETF data:
```R
library(tlaqData)
data(prices)
head(prices)
```

To load the Russell 1000 data:
```
library(tlaqData)
data(r1000)
head(r1000)
```

