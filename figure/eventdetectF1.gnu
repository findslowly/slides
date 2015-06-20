set terminal epslatex
set output 'eventdetectF1.tex'
set grid 
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#FF9F52' lt 1 lw 2 pt 7 ps 1.5 
set key off
set ylabel "Average F-measure"

set boxwidth 0.5
set style fill solid
plot "eventdetectF1.dat" every ::0::2 using 1:3:xtic(2) with boxes ls 1,"eventdetectF1.dat" every ::3::3 using 1:3:xtic(2) with boxes ls 2, "eventdetectF1.dat" every ::4::6 using 1:3:xtic(2) with boxes ls 1
