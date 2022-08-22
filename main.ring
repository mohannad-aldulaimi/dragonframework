# The Main File
if iswindows()
load "ziplib.ring"
dringstr = '@echo off
#(ringbindir)\ring #(ringbindir)\dringinstaller.ring %1 %2 %3
'
mystr = "# Load the FrameWork main file
load '../../tools/ringpm/packages/dragonframework/dragon-ring-mainfile.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\')
ringbindir = libpath
	zip_extract_allfiles("dragonframework.zip",path)
basestr = substr(read('main/base.ring') , '#(frameworkmainpath)',path)
// Adding D-ring Docs To (Browser Option)
	rnotesrcdir = ringbindir+'..\tools\ringnotepad\src\'
	rnotesrcdir = substr(rnotesrcdir,'\','/')

	rnotedocs1   = '["Dragon-Ring Framework Online Documentation", "https://dragon-ring-docs.github.io/index.html"],'
	rnotedocs2   = `["Dragon-Ring Framework WebSite", "https://mohannad-aldulaimi.github.io/dragon-ring_website/index.html"],`
	rnotedocs   = '["Local Help", "file:///"+substr(exefolder(),"\","/") + "../documents/build/html/index.html"],'

	rnote_new_docs = '["Dragon-Ring Framework WebSite", "https://mohannad-aldulaimi.github.io/dragon-ring_website/index.html"],
			["Dragon-Ring Framework Online Documentation", "https://dragon-ring-docs.github.io/index.html"],
			["Local Help", "file:///"+substr(exefolder(),"\","/") + "../documents/build/html/index.html"],'
	rontebasefile = read(rnotesrcdir+'rnotebase.ring')
	rontebasefile = substr(rontebasefile  , rnotedocs1, '' )
	rontebasefile = substr(rontebasefile  , rnotedocs2, '' )
	new_rnotebase = substr(rontebasefile  , rnotedocs,rnote_new_docs )
// Adding d-ring Chem file
	rnotechm   = 'subHelp {'
	rnote_new_chm = 'subHelp {
oDragonAction = new qAction(this.win1) {
settext("Open Dragon-Ring CHM File")
setclickEvent(`
		new QDesktopServices {
OpenURL(new qURL("file:///"+substr(exefolder(),"\","/")+"../documents/Dragon-Ring-Docs.chm") )
	}
`)
}
addaction(oDragonAction)
'
rnotechm1 = `oDragonAction = new qAction(this.win1) {`
rnotechm2 = `addaction(oDragonAction)`
	rontemainfile = read(rnotesrcdir+'rnotemainwindow.ring')
	rontemainfile = substr(rontemainfile  , rnotechm1 , '/*' )
	rontemainfile = substr(rontemainfile  , rnotechm2 , '*/' )
	new_rontemainfile = substr(rontemainfile  , rnotechm , rnote_new_chm )
	
ok
func main
	if isWindows()
		write(ringbindir+'../documents/Dragon-Ring-Docs.chm',read('Dragon-Ring-Docs.chm'))
		write(rnotesrcdir+'rnotemainwindow.ring' , new_rontemainfile)
		write(rnotesrcdir+'rnotebase.ring'       , new_rnotebase)
		write(ringbindir+'load\dragon-ring.ring',mystr)
		write(ringbindir+'dring.bat',substr(dringstr,'#(ringbindir)',ringbindir))
		write(ringbindir+'dringinstaller.ring',read('dringinstaller.ring'))
		write('main/base.ring',basestr)
		chdir('dragon-ring')
		? copy('*',87)
		? TAB+'The "Dragon-Ring-Beta(2.0)" Web Framework Has Been Installed successfully ...'
		? copy('*',87)
	else
		? 'You are Not a Windows user !!!'
		? TAB+'We will support other operating systems in the future ..'
	ok
