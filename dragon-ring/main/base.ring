// loading the main libraries
load 'stdlib.ring'
load '../libs/web/weblib.ring'
load 'db.ring'
import system.web
path = currentdir()
 
dragonindexpage =  "<!DOCTYPE html><html><head><title>Dragon-Ring</title></head><body>"
dragonindexpage += '<style>html{max-height:100%;max-width:100%;}*{text-align:center;margin-top:1%;background-color:black;color:#fff;}</style><h1>"Dragon-Ring Web Framework"</h1><br/><img width="300px" height="300px" src="main/brand.png" /><p>Created Date:- 23,Oct. 2021</p><p>By :-Mohannad Al-Dulaimi</p><br/>contact me on E-mail :- <a href="mailto:dragon-ring@hi2.in">dragon-ring@hi2.in</a><br/>(Alpha Version 1.0.2)</body></html>'

func html(chtmlcode)
	app.webprint(chtmlcode)
func sendvars(catrri)
	 addattribute(dring , catrri )
	 addattribute( app  , catrri )
