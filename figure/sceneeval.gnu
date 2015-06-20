set terminal epslatex
set output 'sceneeval.tex'
set grid 
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#FF9F52' lt 1 lw 2 pt 7 ps 1.5 
set key off
set ylabel "Average Accuracy"
set yrange [0 : 0.7]

set boxwidth 0.5
set style fill solid
plot "sceneeval.dat" every ::0::2 using 1:3:xtic(2) with boxes ls 1,"sceneeval.dat" every ::3::3 using 1:3:xtic(2) with boxes ls 2, "sceneeval.dat" every ::4::4 using 1:3:xtic(2) with boxes ls 1
