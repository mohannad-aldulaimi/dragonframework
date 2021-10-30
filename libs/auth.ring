
func get_cookie_longtime(key, value)
	ex = 'Mon, 09 Mar ' + ( number(timelist()[19])+1 ) + ' 08:13:24 GMT'
	return "Set-Cookie: " + key + "=" + value + "; expires=" + ex + ";" + nl

func cookie(key, value)
	ex = 'Mon, 09 Mar ' + ( number(timelist()[19])+1 ) + ' 08:13:24 GMT'
	cCookies+="Set-Cookie: " + key + "=" + value + nl
Func cookie_longtime(key, value)
		cCookies += get_cookie_longtime(key, value)

Func cookie_del(key)
		cCookies += get_cookie_del(key)
func get_cookie_del(key)
	ex = 'Mon, 09 Mar ' + ( number(timelist()[19])-1 ) + ' 08:13:24 GMT'
	return "Set-Cookie: " + key + "=0; expires=" + ex + ";" + nl

Func login(user, pass)
			cookie("_user_name", sha256(user))
			cookie("_password", sha256(pass))
		
Func login_long(user, pass)
	cookie_longtime("_user_name",sha256(user))
	cookie_longtime("_password" , sha256(pass))

Func logout()
		cookie_del("cookie_login_user")
		cookie_del("cookie_login_pass")

