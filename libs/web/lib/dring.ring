
class dring from Page
	#html('Content-Type:text/html')
	if sysget('REQUEST_METHOD') = "POST"
		aPageVars[:page] = aPageVars[:hrefpg] 
	ok
	if trim(aPageVars[:page]) = ""  
		aPageVars[:page] = 'index'
	ok
	Func Print
	 ctop = "<!DOCTYPE html>"+
	'<html lang="en">' +nl+'<head><meta charset="ISO-8859-1"> <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content=""><meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"><meta name="generator" content="Jekyll v4.1.1">' + '<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.css"><link rel="stylesheet" type="text/css" href="bootstrap/style.css"><script type="text/javascript" src="bootstrap/jq.js">$(document).ready();</script></head><body>' + nl
	cend = '</div></main><script type="text/javascript">$(".container").hide();$(".container")slideDown(500);</script></body><script type="text/javascript" src="bootstrap/bootstrap.js"></script></html>'
			WebPrint(cCookies+ctop+cOutput+cend)
	#sysset('Content-Type','Text/HTML')
Func cookie_longtime(key, value)
		cCookies += get_cookie_longtime(key, value)

Func cookie_del(key)
		cCookies += get_cookie_del(key)

Func login(user, pass)
			cookie("_user_name", sha256(user))
			cookie("_password", sha256(pass))
Func login_longtime(user, pass)
	cookie_longtime("_user_name",sha256(user))
	cookie_longtime("_password" , sha256(pass))

Func logout()
		cookie_del("_user_name")
		cookie_del("_password")

	func getusers()
		mquery('select user_id,first_name,last_name,username,email,phone_number,is_active,is_admin from users')
		res = mresult()
		return res
