BEGIN {
	FS = ","
	count = 0
}
{
	if($20 == "DUI Check"){
		count++
		age[int($8/10) * 10]++
	}
}
END {
	for(a in age){
		print a " " (age[a] / count) * 100
	}
}
