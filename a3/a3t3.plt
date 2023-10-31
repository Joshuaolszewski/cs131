set terminal pngcairo
set out 'a3t3.png'
set boxwidth 0.6 relative
set style histogram 

set datafile separator ' '

set title "PersonTips"
set xlabel "numPersons"
set ylabel "avgTips"
set yrange[0:10]
set xrange[0:10]

set xrange[0:10]
set lmargin 20                                                               
set xtics 1
set ytics 0.5

plot 'three.dat' using 1:2 with boxes
