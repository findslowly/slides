set terminal epslatex
set output 'ourgsr.tex'
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#FF9F52' lt 1 lw 2 pt 7 ps 1.5 
set grid
set ylabel "Scene Recognition Accuracy (Our vs. GSR)"
set xtics ('\textcolor{red}{bathroom}' 0.5, 'beach' 2, 'concert' 3.5, 'forest' 5, 'kitchen' 6.5, '\textcolor{red}{office}' 8, 'park' 9.5, 'restaurant' 11, '\textcolor{red}{street}' 12.5, 'subway station' 14 ) rotate by 45 right  
set xtics center offset 0,-1
set yrange [0 : 1.2]

set boxwidth 0.5
set style fill solid
plot "ourgsr.dat" every 2 using 1:2 with boxes ls 1 title "GSR","ourgsr.dat" every 2::1 using 1:2 with boxes ls 2 title "Our"

