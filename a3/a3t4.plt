set terminal pngcairo
set out 'a3t4.png'
set style fill transparent solid 0.2 noborder
set datafile separator ' '

set title "distance-avgCost"
set xlabel "distance"
set ylabel "avg cost"

set autoscale x
set autoscale y

set lmargin 20                                                               

plot 'four.dat' using 1:2 with points pt 7
