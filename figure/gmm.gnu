#!/usr/bin/gnuplot
#
# Plotting filledcurves with different transparencies
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

# wxt
#set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
set terminal pdfcairo 
set output 'gmm.pdf'

set border linewidth 1.5
#set style fill transparent solid 0.5 noborder 
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set key title "Gaussian Distribution"
# Axes
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror out scale 0.75
# Grid
set style line 12 lc rgb'#808080' lt 0 lw 1
set grid back ls 12

set style fill noborder
set style function filledcurves y1=0
set clip two

Gauss(x,mu,sigma) = 1./(sigma*sqrt(2*pi)) * exp( -(x-mu)**2 / (2*sigma**2) )
d1(x) = Gauss(x, 0.5, 0.5)
d2(x) = Gauss(x,  2.,  1.)
d3(x) = Gauss(x, -1.,  2.)
d(x) = Gauss(x,0.5,0.5)+Gauss(x,2,1)+Gauss(x,-1,2) 

set xrange [-5:5]
set yrange [0:1.2]

unset colorbox

set key title "Gaussian Distribution"
set key top left Left reverse samplen 1

set lmargin 6
plot d1(x) fs transparent solid 0.75 lc rgb "forest-green" title 'µ= 0.5 σ=0.5', \
     d2(x) fs transparent solid 0.75 lc rgb "gold" title 'µ= 2.0 σ=1.0', \
     d3(x) fs transparent solid 0.75 lc rgb "red" title 'µ=-1.0 σ=2.0', \
	d(x) ls 1 fs transparent solid 0.3 title 'GMM'
