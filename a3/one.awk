BEGIN {
        FS=","
}
{
	if(loc[$8]!=$8) {
			loc[$8]=$8
                        amount[$8]=$17
                        count[$8]=1
                }
                else {
                        amount[$8]=amount[$8]+$17
			count[$8]++
                }

}
END {
        for(l in loc) {
                print l " " amount[l]/ count[l] 
        }
}
