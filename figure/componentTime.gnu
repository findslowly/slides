set terminal epslatex
set output 'componentTime.tex'
set grid 
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#ff0000' lt 1 lw 3 pt 7 ps 1.5  

set key off
set xlabel "\\LARGE{Component Number}"
set ylabel "\\LARGE{Running Time (s)}"

set arrow from 18,400 to 18,796 nohead ls 2
plot 'componentTime.dat' with linespoints ls 1
