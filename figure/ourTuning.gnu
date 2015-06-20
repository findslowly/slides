set terminal epslatex
set output 'ourTuning.tex'
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#FF9F52' lt 1 lw 2 pt 7 ps 1.5 
set grid
set ylabel "Scene Recognition Accuracy"
set xtics ('Undenoise training data' 0.25, 'Denoise training data' 1.75)
set yrange [0 : 0.8]

set boxwidth 0.5
set style fill solid
plot "ourTuning.dat" every 2 using 1:2 with boxes ls 1 title "Undenoise testing data","ourTuning.dat" every 2::1 using 1:2 with boxes ls 2 title "Denoise testing data"

