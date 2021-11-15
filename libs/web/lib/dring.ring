
class dring from Page
	#html('Content-Type:text/html')
	if sysget('REQUEST_METHOD') = "POST"
		aPageVars[:page] = aPageVars[:hrefpg] 
	ok
	if trim(aPageVars[:page]) = ""  
		aPageVars[:page] = 'index'
	ok
	
	Func Print
	 ctop = '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="bootstrap/bootstrap.css" rel="stylesheet">
  <link href="bootstrap/style.css" rel="stylesheet">
</head>
<body>

'
	cend = '
<script src="bootstrap/jq.js"></script>
<script src="bootstrap/bootstrap.js"></script>
</body>
</html>
'
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
