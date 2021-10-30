load "stdlib.ring"
load 'internetlib.ring'
import system.web
load 'lib/app.ring'


flash = [[null],[null]]
MainUrl = 'http://localhost/'
404err = '<style>*{text-align: center !important;margin-top:20%!important;}</style><h1>Error 404 | Page Not Found</h1>'
cUploadFolder = '/uploads/'
cUploadPath = currentdir() + cUploadFolder
app.route('404', :htmlstr, 404err)
func url(charurl)
	return MainUrl+charurl
func url_for(charurl)
	return url(charurl)
	#return 'route.ring?page='+charurl+'&'
func app()
	return app
func flash(type,msg)
	return add(flash,[type,msg])
func get_flashed_messages()
	return showflash()
func showflash()
	re_s = ''
	 if not isnull(flash[2])  
	   for x=3 to len(flash) 
	    re_s += '<div class="alert alert-'+flash[x][1]+'">'+flash[x][2]+'</div>'
	    next 
	   ok 
	return re_s
func mybtn(alist)
	return btn([mybtn([:class=aList[:class],:href=aList[:href],:name=aList[:name]])])
func btn(alist)
	cstr = '<button style="'+aList[:style]+'" class="'+alist[:class]+'"  type="submit" '+alist['more']+' value="'+aList[:name]+'" '+' name="'+aList[:name]+'">'+alist[:name]+'</button>'
	cstr += "<input type='hidden' name='hrefpg' value='"+ aList[:href]+"'/>"
	return cStr
func MyVal(text)
	return substr(text, "'", "")
func ShowVars()
for vars=1 to len(aPageVars)
	for vals=1 to len(aPagevars[vars])
    html(aPagevars[vars][vals]+' : ')
    next
    html('<br/>')
next

func isNameFound(elName)
	found = false
	for x in aPageVars
		if lower(trim(x[1])) = lower(trim(elName))
			found = true
			exit
		ok
	next
	return found
func get_cookie_longtime(key, value)
	ex = 'Mon, 09 Mar ' + ( number(timelist()[19])+1 ) + ' 08:13:24 GMT'
	return "Set-Cookie: " + key + "=" + value + "; expires=" + ex + ";path=/" + nl

func get_cookie_del(key)
	ex = 'Mon, 09 Mar ' + ( number(timelist()[19])-1 ) + ' 08:13:24 GMT'
	return "Set-Cookie: " + key + "=n; expires=" + ex + ";path=/" + nl

func is_auth()
	if not isnull(trimall(aPageVars['_user_name'])) and  not isnull(trimall(aPageVars['_password'])) and trimall(aPageVars['_user_name']) !='n'
		return true
	else
		return false
	ok
func upload_with_name(obj, cFile, fileName)
	if aPageVars[cFile] != char(13)
		file_name = fileName
		cFileName = cUploadPath + file_name
		write(cFileName, aPageVars[cFile])
		system('chmod a+x ' + cFileName)
		return cUploadFolder + file_name
	ok

func upload(obj, cFile)
	return upload_with_name(obj, cFile, obj.getFileName(aPageVars,cFile))



Func redirect(pageName)
	dring{script( scriptredirection(pageName))}
