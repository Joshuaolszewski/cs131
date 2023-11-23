BEGIN {
	FS = ","
	black = 0
	white = 0
	hispanic = 0
	asian = 0
}
{
	if($9 == "black" && $20 == "DUI Check"){
		black++
	}
	if($9 == "white" && $20 == "DUI Check"){
                white++
	}
	if($9 == "hispanic" && $20 == "DUI Check"){
                hispanic++
	}
	if($9 == "asian/pacific islander" && $20 == "DUI Check"){
                asian++
	}
}
END {
	print "black: " black
	print "white: " white
	print "hispanic: " hispanic
	print "asian: " asian 
}	
