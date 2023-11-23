BEGIN {
	FS = ","
	mWarning = 0
	mCitation = 0
	mArrest = 0
	wWarning = 0
	wCitation = 0
	wArrest = 0
}
{
	if($20 == "DUI Check"){
		if($10 == "male"){
			if($15 == "warning"){
				mWarning++
			}
			if($15 == "citation"){
				mCitation++
			}
			if($15 == "arrest"){
				mArrest++
			}
		}
		if($10 == "female"){
			if($15 == "warning"){
                                wWarning++
                        }
                        if($15 == "citation"){
                                wCitation++
                        }
                        if($15 == "arrest"){
                                wArrest++
                        }			
		}
	}
}
END {
	print "Male Warning " mWarning
	print "Male Citation " mCitation
	print "Male Arrest " mArrest
	print "Female Warning " wWarning
	print "Female Citation " wCitation
	print "Female Arrest " wArrest
}	
