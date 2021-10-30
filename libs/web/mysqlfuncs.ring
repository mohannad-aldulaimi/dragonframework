load 'mysqllib.ring'
load 'stdlib.ring'
mysql_connection = [
	:host    = "localhost",
	:port    = null   ,
	:user 	  = "root" ,
	:pass 	  = "" 	   ,
	:db_name = "mohannad_website"
]
	init = mysql_init()
	 mysql_connect( init,mysql_connection['host'] , mysql_connection["user"] , mysql_connection["pass"] , mysql_connection['db_name'])

func mdelete(tblname,colname,deleteby)
	mysql_query(init,'delete from '+tblname+' where '+colname+'="'+deleteby+'"')
func mupdatedbshow(tblname,colname,colval,cols,colsval)
	cstr='update '+tblname+' set '+
	for x=1 to len(cols)
		cstr+=cols[x]+'="'+colsval[x]+'", '
	next
	cstr += ', where '+colname+'="'+colval+'"'
	cstr = substr(cstr,', ,','')
	return cstr
func mupdatedb(tblname,colname,colval,cols,colsval)
	cstr='update '+tblname+' set '+
	for x=1 to len(cols)
		cstr+=cols[x]+'="'+colsval[x]+'", '
	next
	cstr += ', where '+colname+'="'+colval+'"'
	cstr = substr(cstr,', ,','')
	#? cstr
	if not mQUERY(cstr)
		return 'success'
	else return 'danger '+nl + mysql_error(init)
	ok

func mquery(cstr)
	return mysql_query(init,cstr) 
func mresult()
	return mysql_result(init) 
func add2db(tblname,tblval)
	cstr='insert into '+tblname+' values("'+tblval[1]
	for x=2 to len(tblval)
		cstr+= '","'+ tblval[x] + '"'
	next
	cstr += ')'
	cstr = substr(cstr,'""','"')
	#? cstr
	if not mQUERY(cstr)
		return 'success'
	else return 'danger '+nl + mysql_error(init)
	ok
func check_login(username,password)
	tq = 'select count(user_id) from users where username="'+
	username+
	'" and password="'+sha256(password)+'";'
	check_str = mQUERY(tq)
	is_true = mresult()
	if number(is_true[1][1])
		return 1
	else
		return 0
	ok
func isconnected()
	if mysql_error(init) = null
		return html('connected successfully')
	else 
		return mysql_error(init)
	ok