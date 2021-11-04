# The Ring Standard Library
# Web Library
# 2016-2018, Mahmoud Fayed <msfclipper@yahoo.com>
# changed !
Import System.Web
Func Template cFile,oObject

	ctop = "<!DOCTYPE html>"+
	'<html lang="en">' +nl+'<head><meta charset="ISO-8859-1"> <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content=""><meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"><meta name="generator" content="Jekyll v4.1.1">' + '<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.css">
	   <script type="text/javascript" src="bootstrap/jq.js">$(document).ready();</script>
	   </head><body>' + nl
	 ctop = ''
	cend = '</div></main><script type="text/javascript">$(".container").hide();$(".container")slideDown(500);</script></body><script type="text/javascript" src="bootstrap/bootstrap.js"></script></html>'
	cend = ''
	#cnav = Template_exe('website/templates/nav.html')
	cnav = null
	#cfooter= Template_exe('website/templates/footer.html')
	divcont = '<div class="container">'
	#divcont = null
	cFileName = 'website/templates/'+cFile
	cStr = Read(cFileName)
	aList = []
	cResult = ""
	cCode = ""
	nPos = substr(cStr,"{%")
	if nPos = 0
		aList + cStr
		cCode += "cResult += aList[" + len(aList) + "]" + nl
	ok
	while nPos > 0
		cText = left(cStr,nPos-1)
		if cText != ""
			aList + cText
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
		cStr = substr(cStr,nPos+2)
		nPos = substr(cStr,"%}")
		if nPos > 0					
			if left(cStr,1) = "="
				cCode += "cResult += (" + substr(cStr,2,nPos-2) + ")" + nl	
			else
				cCode += left(cStr,nPos-1) + nl						
			ok
			cStr = substr(cStr,nPos+2)
		ok
		nPos = substr(cStr,"{%")
		if nPos = 0
			aList + cStr
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
	end
        if not isnull(oObject) and isobject(oObject)
                oObject{
                        eval(cCode)
                }
        else
               eval(cCode)
        ok
	return ctop+cnav+divcont+cResult+cend
Func Template_exe cFile
	cFile = 'website/templates/'+cFile
	cStr = Read(cFile)
	aList = []
	cResult = ""
	cCode = ""
	nPos = substr(cStr,"{%")
	if nPos = 0
		aList + cStr
		cCode += "cResult += aList[" + len(aList) + "]" + nl
	ok
	while nPos > 0
		cText = left(cStr,nPos-1)
		if cText != ""
			aList + cText
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
		cStr = substr(cStr,nPos+2)
		nPos = substr(cStr,"%}")
		if nPos > 0					
			if left(cStr,1) = "="
				cCode += "cResult += (" + substr(cStr,2,nPos-2) + ")" + nl	
			else
				cCode += left(cStr,nPos-1) + nl						
			ok
			cStr = substr(cStr,nPos+2)
		ok
		nPos = substr(cStr,"{%")
		if nPos = 0
			aList + cStr
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
	end 
        eval(cCode)
	return cResult
	
func customtemplate cFile,oObject

	ctop = "<!DOCTYPE html>"+
	'<html lang="en">' +nl+'<head> <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content=""><meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"><meta name="generator" content="Jekyll v4.1.1">' + '<link rel="stylesheet" type="text/css" href="../bootstrap/bootstrap.css">
	   <link rel="stylesheet" type="text/css" href="../bootstrap/style.css">
	   <script type="text/javascript" src="../bootstrap/jq.js">$(document).ready();</script>
	   </head><body>' + nl
	cend = '</div></main><script type="text/javascript">$(".container").hide();$(".container")slideDown(500);</script></body><script type="text/javascript" src="../bootstrap/bootstrap.js"></script></html>'
	
	divcont = '<div class="container">'
	cStr = Read(cFile)
	
	aList = []
	cResult = ""
	cCode = ""
	nPos = substr(cStr,"{%")
	if nPos = 0
		aList + cStr
		cCode += "cResult += aList[" + len(aList) + "]" + nl
	ok
	while nPos > 0
		cText = left(cStr,nPos-1)
		if cText != ""
			aList + cText
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
		cStr = substr(cStr,nPos+2)
		nPos = substr(cStr,"%}")
		if nPos > 0					
			if left(cStr,1) = "="
				cCode += "cResult += (" + substr(cStr,2,nPos-2) + ")" + nl	
			else
				cCode += left(cStr,nPos-1) + nl						
			ok
			cStr = substr(cStr,nPos+2)
		ok
		nPos = substr(cStr,"{%")
		if nPos = 0
			aList + cStr
			cCode += "cResult += aList[" + len(aList) + "]" + nl
		ok
	end
        if not isnull(oObject) and isobject(oObject)
                oObject{
                        eval(cCode)
                }
        else
                eval(cCode)
        ok
	return ctop+cResult+cend
#make templates from (website) folder
func website_template cFile,oObject
	return customtemplate(cFile,oObject)
func web_template cFile,oObject
	return customtemplate(cFile,oObject)
func render_template cFile,oObject
	return template(cFile,oObject)