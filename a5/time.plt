set terminal png
set output 'time.png'
set boxwidth 0.8 relative
set style fill solid

set datafile separator ' '

set title "Number of DUI Checks depending on time"
set xlabel "Time"
set ylabel "Number of DUI Checks"
set yrange[0:140]
set xrange[0:24]

set lmargin 10
set xtics 1
set ytics 10

plot 'time.data' using 2:1 with boxes title 'DUI Checks'
