# tlaqData
Data used in Trade Like a Quant Bootcamp.

Includes price history for ETFs representing major asset classes, 
Russell 1000 constituents, and spot Bitcoin.

The data is static (ie not updated).

## Installation

```R
if (!require(pacman)) install.packages("pacman")
library(pacman)
p_load_gh("RWLab/tlaqData", dependencies = FALSE, update = FALSE)
```

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

To load the Bitcoin data:
```
library(tlaqData)
data(btc)
head(btc)
```

