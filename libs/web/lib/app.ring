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
	Func write(charpage)
		#WebPrint(charpage)
		new dring{html(charpage)}
	func route2(cpagename,ctype,ccode)
		if isstring(cpagename)
		cpagename = split(cpagename,'/')
		route(cpagename ,ctype, ccode)
		ok
	func route(cpagename ,ctype, ccode)
	if islist(cpagename)
		aPagename = cpagename
	curlstr = 'vt=['
	nStart = 1
	 while nstart <= len(aPageName)
	if nstart != len(aPageName)
		curlstr +='v'+nstart+','
	else	
		curlstr +='v'+nstart
	ok
	nStart ++
	end
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
	str = 'load "'+lbname+'"'
	 eval(str)
 private
Func isequal(l1,l2)
		l1 = trimall(lower(list2str(l1)))
		l2 = trimall(lower(list2str(l2)))
		if l1 = l2 
			return true
		else 
			return false 
		ok
Func Template cFile,oObject
	return dring{
		template(cFile,oObject)
	}
