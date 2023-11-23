set terminal png
set output 'age.png'
set boxwidth 0.8 relative
set style fill solid 

set datafile separator ' '

set title "% of DUI Checks in each Age Range"
set xlabel "Age Range"
set ylabel "%"
set yrange[0:40]
set xrange[0:100]

set lmargin 10                                                               
set xtics 10
set ytics 5

plot 'age.data' using 1:2 with boxes title 'DUI Checks', \
     '' using 1:2:(sprintf("%.2f%%",$2)) with labels offset 0,1 notitle
