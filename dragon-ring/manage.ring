load 'stdlib.ring'
func main
	Linee()
	? TAB + TAb +'Welcom To "Dragon-Ring" Web Framework Management'
	Linee()
	getinfos()
	new Commands(getargv())
func getinfos()
		? 'Usage :- [ring manage.ring] <Command>'
		? 'For more information use <help> '
		? ''
	return
#to get Command line parameters
func getargv()
	return sysargv
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
					this.init(getargv())

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
		if getargv()[4] = 1
system('ring '+substr(currentdir(),'/','\')+'\dragon-ring\batch\ring\server.ring')
		ok
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