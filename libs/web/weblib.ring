load 'lib/template.ring'
load package "lib/weblib.ring"
# Get a copy from the required global variables
import system.web
	
aPageVars 		= GetaPageVars()
	htmlcssattributes 	= Gethtmlcssattributes()
	aObjsAttributes 	= GetaObjsAttributes()

v1 = lower(aPageVars[:page])
v2 = lower(aPageVars[:v2])
v3 = lower(aPageVars[:v3])
v4 = lower(aPageVars[:v4])
v5 = lower(aPageVars[:v5])
v6 = lower(aPageVars[:v6])
page_url = [v1,v2,v3,v4,v5,v6]
if islist(aPageVars) 
	dring = new dring
	app = new app
	load 'dring.ring'
ok
