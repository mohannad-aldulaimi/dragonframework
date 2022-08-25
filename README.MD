# Dragon-Ring Web Framework Beta(2.0)
_It's very easy to create your own web-sites using [The Ring Programming Language](http://ring-lang.net)_

## Install (From RingPM):-
#### (1) Use this command for installation 
	 ringpm install dragonframework from mohannad-aldulaimi
#### (2) Run The Dragon-Ring installation:-
	ringpm run dragonframework
#### (3) Go to any directory and type this command:-
	dring create <porject_name>
##### For example:-
	dring create first_web_app
## Run :-
#### To run just use this command :-
	ring manage.ring run
#### Or :-
	dring run <porject_name>
## What Is New:-
### Beta Version (2.0)
	1. Dragon-Ring Management System had been Enhanced:-
		1-A. Add the ability to import Dragon-Ring extentions by using :- 
			importlib(cLibName) .</li>
		1-B. Add the ability to include 'vendor/css' , 'vendor/js' files automatically by using :-
		include_vendor() function. 
	2. Dragon-Ring comes with many useful functions:- 
		2-A. request_method() ---> 'POST','GET' 
			it returns request method , also you can use request_method Variable.
				if request_method() = 'POST' dring{html('POST Method')} ok
		2-B. Upload a Files Using uploadfile(cInput,CButton) function
			Note:- cInput,CButton write them with its`s Selectors as in css code Has(#) For id
				or Dot(.) For classes.
		2-C. Now You Can write the Route code and identifying The type of route without a String So :-
				app{ Route('Index',Ringfile,'index.ring') } 
				/* Or */ app{ Route('Index',Ringfunc,'index()') }
				/* Or */ app{ Route('Index',htmlstr,'The Index Page') }  
				/* Or */ app{ Route('Index',htmlfile,'index.html') } 
		2-D. Functions Can be used only inside dring object:-
			2-D-1.Header(String_html_code)---> returns an html code and embed it into header of page.
			2-D-2.SetTitle(String Title)---> embed a Title to page header.
			2-D-3.SetIcon(image_src)--> to set icon for the page.
			2-D-4.Css(cSelector,Css_Code)---> embed css code to the heaader of the page. 
	3. Add the { Route3() Route4() Route5() Route6() } Functions for some reasons... 
	4. Add Sqlite Database Extention.
	5. Add Sqlite to Documentation.
	6. Add Postgre ,mysql classes.
	7. Now When You Create a route for a ring file without creaating the file
		the system will generate it for you.

### Beta Version (1.1)
    1. Make the execute files more faster 
        --> (It Takes 0.2s for executing).
    2. Dispensing (.htaccess) file [On Windows].
    3. The Documentation has been updated.
    4. (GET and POST) Methods (Better Code).
    5. (dring) The Installation Tool Has Been Updated.
    6. (dring) Add The Run command.
    7. The Framework Documentation Has Been Added To The Language Website.
    
### alpha Version 1.0.4
	1. Add the ability to create projects using command line .
	2. Add PostGreSql database extention with many useful functions.
	3. Cookies Errors fixed.
	4. weblib tempates (better code).
	5. Add route2 function .
	6. Error 404 Page (better code to be faster).
	7. Auto Error Avoiding during execute files (if any error occurred on page it will return error 404 page not found (during the executing) not on code error).
	8. Made the Page executing more faster .
	9. updating the bootstrap and J-Query files.
	10. Showflash() function (better code).
	11. Add Get_Flashed_Messages() function.
	12. Add (dangerous) Class for Flash messages.
	13. Add 'Working With PostgreSql' document.
	14. Add Employees example.
	15. Add Login&signup example.
### alpha Version 1.0.2
		1. Add manage.ring so that you can manage your project easily.
		2. Add [run] command to control the server :-
			* run:startserver
			* run:stopserver
			* run:restartserver 
		3. Add the ability to run the project from any path without Ring notepad or Xampp or Apache [only for windows]
