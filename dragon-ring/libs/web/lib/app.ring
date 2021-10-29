load 'dring.ring'
import system.web

class App from dring
	if sysget('REQUEST_METHOD') = "POST"
		aPageVars['page'] = aPageVars[:hrefpg] 
	ok
	if trim(aPageVars[:page]) = ''  
	and sysget('REQUEST_METHOD') = 'GET'
		aPageVars[:page] = 'index'
	ok
	func ip_infos()
	str = substr(system('arp -a'),24)
	return html('Your ip information is '+nl+str)	
	func status(ctype)
	if not islist(ctype)
		ctype = lower(ctype)
	ok
	if isstring(ctype)
		switch ctype
			on :debug
				str = '<script>'
				str += 'setInterval(function(){location.reload(true);},30000)'
				str += '</script>'
				this.WebPrint(str)
		off
	ok
	if islist(ctype)
		switch ctype
			on ctype[:debug] = true 
			str = '<script>'
				str += 'setInterval(function(){location.reload(true);},'+ctype[:time]+')'
				str += '</script>'
				this.WebPrint(str)
		off
	ok 
	Func write(charpage)
		#WebPrint(charpage)
		new dring{html(charpage)}
	func route2(cpagename,ctype,ccode)
		if isstring(cpagename)
		cpagename = split(cpagename,'/')
		route(cpagename ,ctype, ccode)
		ok
	func route(cpagename ,ctype, ccode)
	if startswith(ccode , 'website/')
		ccode = substr(ccode ,'website/','')
	ok
	if islist(cpagename)
		aPagename = cpagename
	curlstr = 'vt=['
	for strvars=1 to len(aPageName)
	if strvars != len(aPageName)
		curlstr +='v'+strvars+','
	else	
		curlstr +='v'+strvars
	ok
	next
	curlstr += ']'
	 eval(curlstr)
	 if  isequal(aPagename,vt)	
	 see "Content-type: text/html" +nl+nl
		 switch ctype
			on :ringfunc
				eval(ccode)
			on :ringfile 
				ccode = 'website/'+ ccode	
				this.loadwebpage(ccode)	
			on :htmlstr 
				this.write( ccode )
			on :htmlfile 
	 			ccode = 'website/templates/'+ccode
				this.write( read(ccode) ) 
			on :dringfile 
				this.write( read(ccode) ) 
			other	
		 		this.html(ccode)
			off
	ok
	else
		if lower(aPageVars[:page]) = lower(cpagename) and v2=null and v3=null and v4 = null and v5=null and v6 = null
		see "Content-type: text/html" +nl+nl   
			switch ctype
				on  :ringfunc
					eval(ccode)
				on  :ringfile 
					ccode = 'website/'+ ccode	
					this.loadwebpage(ccode)	
				on  :htmlstr 
					this.write( ccode )
				on :htmlfile 
	 				ccode = 'website/templates/'+ccode
					this.write( read(ccode) ) 
				on :dringfile 
					this.write( read(ccode) ) 
				other	
			 		this.html('')
				off
		ok 

	ok
func loadwebpage(lbname)
	str = 'try load "'+lbname+'" catch app.html(0) done'
	try eval(str) catch html(raise('Error in Controller/Template codes ...'))	 done	
Func isequal(l1,l2)
	lenl1 = len(l1)
	lenl2 = len(l2)
	if lenl1 = lenl2 
		l1 = trimall(lower(list2str(l1)))
		l2 = trimall(lower(list2str(l2)))
		if l1 = l2 
			return true
		else 
			return false 
		ok
	else
		return false
	ok
Func Template cFile,oObject
	return dring{
		template(cFile,oObject)
	}
