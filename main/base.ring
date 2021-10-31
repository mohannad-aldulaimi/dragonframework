// loading the main libraries
load 'stdlib.ring'
load '../libs/web/weblib.ring'
load 'db.ring'
import system.web
frmpath = '#(frameworkmainpath)'
dragonindexpage =  "<!DOCTYPE html><html><head><title>Dragon-Ring</title><link rel='icon' href='website/brand.png' /></head><body>"
dragonindexpage += '<style>html{max-height:100%;max-width:100%;}*{text-align:center;margin-top:1%;background-color:black;color:#fff;}</style><h1>"Dragon-Ring Web Framework"</h1><br/><img width="300px" height="300px" src="website/brand.png" /><p>Created Date:- 23,Oct. 2021</p><p>Latest Update Date:- 31,Oct. 2021</p><p>By :-Mohannad Al-Dulaimi</p><br/>contact me on E-mail :- <a href="mailto:dragon-ring@hi2.in">dragon-ring@hi2.in</a><br/>(Alpha Version 1.0.2)</body></html>'

func html(chtmlcode)
	app.webprint(chtmlcode)
func sendvars(catrri)
	 addattribute(dring , catrri )
	 addattribute( app  , catrri )
func getargv()
	return sysargv

class DragonMagangement
	func init args
	Linee()
	? TAB + TAb +'Welcom To "Dragon-Ring" Web Framework Management'
	Linee()
	getinfos()
	new Commands(args)
func getinfos()
		? 'Usage :- [ring manage.ring] <Command>'
		? 'For more information use <help> '
		? ''
	return
#to get Command line parameters

func Linee
	? copy('=' , 75)


class Commands
	
	func init argCode
		if len(argCode) > 2  
		switch lower(argCode[3]) 
			on  'run'
				? 'Choose :- '+nl
				? '(1) to Run Server '
				? '(2) to Stop Server '
				? '(3) to Restart Server '
				see TAB +'-->' give Ccomand 
				see TAB+'( '+ Ccomand+' )'
				switch Ccomand
					on '1'
						startserver()
					on '2'
						stopserver()
					on '3'
						restartserver()
				other
					? 'Bad argument'
					try init(getargv())
					catch
						return 
					done
				off
			on 'help'
				gethelp()
			on 'run:startserver'
				startserver()
			on 'run:stopserver'
				stopserver()
			on 'run:restartserver'
				restartserver()
			other
				? 'Bad argument'
			off
		ok
func gethelp()
	? 'Usage :- run To manage the server'
func startserver
	if isWindows()
		? 'The server will be running in a few seconds'
		#system('ring batch\ring\server.ring')
		system('ring batch\ring\server.ring')
	else
		? 'You are not windows user ...'
	ok
func stopserver
	if isWindows()
		? 'The server was stopped'
		systemsilent('taskkill /IM httpd_ring.exe /F')
	else
		? 'You are not windows user ...'
	ok
func restartserver()
	if isWindows()
		see 'Restarting the Server ...' + nl
		stopserver()
		startserver()
	else
		? 'You are not windows user ...'
	ok