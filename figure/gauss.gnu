set terminal epslatex
set output 'gauss.tex'
set clip two
set style fill transparent solid 0.5  
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set key title "Gaussian Distribution"
set key inside left top vertical Left reverse enhanced autotitle nobox
set key noinvert samplen 1 spacing 1 width 0 height 0 
set style data lines
set style function filledcurves y1=0
set xrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set yrange [ 0.00000 : 1.50000 ] noreverse nowriteback
unset colorbox
Gauss(x,mu,sigma) = 1./(sigma*sqrt(2*pi)) * exp( -(x-mu)**2 / (2*sigma**2) )
d1(x) = Gauss(x, 0.5, 0.5)
d2(x) = Gauss(x,  2.,  1.)
d3(x) = Gauss(x, -1.,  2.)
d(x) = Gauss(x, 0.5, 0.5) + Gauss(x, 2, 1) + Gauss(x, -1, 2)
save_encoding = "utf8"
GPFUN_Gauss = "Gauss(x,mu,sigma) = 1./(sigma*sqrt(2*pi)) * exp( -(x-mu)**2 / (2*sigma**2) )"
GPFUN_d1 = "d1(x) = Gauss(x, 0.5, 0.5)"
GPFUN_d2 = "d2(x) = Gauss(x,  2.,  1.)"
GPFUN_d3 = "d3(x) = Gauss(x, -1.,  2.)"
GPFUN_d = "d(x) = Gauss(x, 0.5, 0.5) + Gauss(x, 2, 1) + Gause(x, -1, 2)" 

plot d1(x) fs solid 1.0 lc rgb "forest-green" title "$\\mu$ =  0.5 $\\sigma$ = 0.5", d2(x) lc rgb "gold" title "$\\mu$ =  2.0 $\\sigma$ = 1.0", d3(x) lc rgb "dark-violet" title "$\\mu$ = -1.0 $\\sigma$ = 2.0"
