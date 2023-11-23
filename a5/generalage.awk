BEGIN {
	FS = ","
	male = 0
	female = 0
}
{
	if($10 == "male")
		male++
	if($10 == "female")
		female++
}
END {
	print "male " male
	print "female " female
}
