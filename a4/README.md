Some entries have directors and some dont.
To solve this incosistency we will delete the director field from the entries inwhich the director field occurs. 

1) loop through each line of file
2) if "Director:" is in the line, ignore it and all lines up to until the "|" which precedes "Stars:"
3) otherwise the line can remain and can be in the output.  
