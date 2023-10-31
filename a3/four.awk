BEGIN {
        FS=","
}
{
        if(dis[$5]!=$5) {
                        dis[$5]=$5
                        amount[$5]=$17
                        count[$5]=1
                }
                else {
                        amount[$5]=amount[$5]+$17
                        count[$5]++
                }

}
END {
        for(d in dis) {
                print d " " amount[d]/count[d]
        }
}

