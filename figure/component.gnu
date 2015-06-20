set terminal epslatex
set output 'component.tex'
set grid 
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue

set key off
set xlabel "Component Number"
set ylabel "Average F-measure"
set yrange [0 : 0.6]

plot 'component.dat' with linespoints ls 1
