BEGIN {
        FS=","
}
{
        if(loc[$8" "$9]!=$8" "$9) {
                        loc[$8" "$9]=$8" "$9
                        amount[$8" "$9]=$17
                        count[$8" "$9]=1
                }
                else {
                        amount[$8" "$9]=amount[$8" "$9]+$17
                        count[$8" "$9]++
                }

}
END {
        for(l in loc) {
                print l " " amount[l]/count[l]
        }
}
