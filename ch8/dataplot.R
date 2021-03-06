#=======================================
# Chapter 8, Drawing data
#   modified on 2019/10/19
#=======================================

"%+%" <- function(x, y) paste(x, y, sep = "")
dset <- read.csv("dset_fig.csv")
# figpath <- "../../figs/"
figpath <- "./"

if (.Platform$OS.type == "windows") windows(7, 8)
par(mfrow = c(3, 1), ps = 13)
par(mai = c(0.7,1.2, 0.5, 0.35)*0.5)
par(family="Japan1GothicBBB") 
plot(ts(dset$GAP, start = c(1980, 2), freq = 4), main = "ＧＤＰギャップ", xlab = "", ylab = "％")
plot(ts(dset$PC_PGDP, start = c(1980, 2), freq = 4), main = "ＧＤＰデフレーター（前期比伸び率）", xlab = "", ylab = "％")
plot(ts(dset$IRS, start = c(1980, 2), freq = 4), main = "短期金利", xlab = "", ylab = "％")

# GAP PC_PGD IRS
dev.copy2pdf(file=figpath %+% "dataplot.pdf",family="Japan1GothicBBB")
# [0 0 504 575]

