BEGIN {
        FS=","
}
{
        if($17>=10) {
                if(tip[$14]!=$14) {
                        tip[$14]=$14
                        count[$14]=1
                }
                else {
                        count[$14]++
                }
        }
}
END {
        for(s in tip) {
                print s " "count[s]
        }
}
