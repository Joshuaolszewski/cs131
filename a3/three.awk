BEGIN {
        FS=","
}
{
        if(pas[$4]!=$4) {
                        pas[$4]=$4
                        tip[$4]=$14
                        count[$4]=1
                }
                else {
                        tip[$4]=tip[$4]+$14
                        count[$4]++
                }

}
END {
        for(p in pas) {
                print p " " tip[p]/count[p]
        }
}

