# Dragon-Ring
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="40%" height="40%">
<h2>2.0 (Beta)</h2>
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
<p>The Framework's Files Structure :-</p>
<img src="images&Videos/mainimage.png" width="100%" height="50%" alt="">


<hr />
<h3>How to install ?</h3> <br>
 <strong><a href="https://github.com/mohannad-aldulaimi/dragonframework#install-from-ringpm-" target="_blank">Click here To install </a></strong>
 <h2>What Is New:-</h2>
 <h3>Beta Version 1.2</h3>
 <pre style="background-color:#fff !important;">
  1. Dragon-Ring Management System had been Enhanced:-
      1-A. Add the ability to import Dragon-Ring extentions by using :- 
        importlib(cLibName) .</li>
      1-B. Add the ability to include 'vendor/css' , 'vendor/js' files automatically by using :-
       include_vendor() function.
  2. Dragon-Ring comes with many useful functions:- 
    2-A. request_method() ---> 'POST','GET' 
          it returns request method , also you can use request_method Variable.
          <dev style="background-color: gold;padding: 0px !important ; margin: 0px !important;"">if request_method() = 'POST' dring{html('POST Method')} ok</dev>
    2-B. Upload a Files Using uploadfile(cInput,CButton) function
       Note:- cInput,CButton write them with its`s Selectors as in css code Has(#) For id
          or Dot(.) For classes.
    2-C. Now You Can write the Route code and identifying The type of route without a String So :-
        <dev style="background-color: gold;padding: 0px !important ; margin: 0px !important;"">app{ Route('Index',Ringfile,'index.ring') }<br> /* Or */ app{ Route('Index',Ringfunc,'index()') }<br> /* Or */ app{ Route('Index',htmlstr,'The Index Page') } <br> /* Or */ app{ Route('Index',htmlfile,'index.html') } </dev>
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

<div style="background-color:red;color: white;padding: 0px;margin: 0px;"><strong>Note:- This Framework is based on the 'weblib' So you will find it is very easy to use this framework :) .</strong></div></pre>
 <br>
 <br>
<strong>alpha Version 1.0.4</strong>
<pre style="background-color:#fff !important;font-size: 20px !important;">1. Add the ability to create projects using command line .
2. Add PostGreSql database extention with many useful functions.
3. Cookies Errors fixed.
4. weblib tempates (better code).
5. Add route2 function .
6. Error 404 Page (better code to be faster).
7. Auto Error Avoiding during execute files (if any error occurred on page
it will return error 404 page not found (during the executing) not on code error).
8. Made the Page executing more faster .
9. updating the bootstrap and J-Query files.
10. Showflash() function (better code).
11. Add Get_Flashed_Messages() function.
12. Add (dangerous) Class for Flash messages.
13. Add 'Working With PostgreSql' document.
14. Add Employees example.
15. Add Login&signup example.
</pre>
<br>
<br>
<br>
<strong>alpha Version 1.0.2</strong>
<pre style="background-color:#fff !important;">1. Add manage.ring so that you can manage your project easily.
2. Add [run] command to control the server :-
    * run:startserver
    * run:stopserver
    * run:restartserver 
3. Add the ability to run the project from any path without Ring notepad 
  or Xampp or Apache [only for windows]</pre>
<br>
<br>
<br>
  <div>
    <strong>Documentation Content:-</strong>
 <br><br>
        <ul>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/route'>(1) Route </a>
                  </li>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/template'>(2) Templates </a>
                  </li>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/controllers'>(3) Controllers </a>
                  </li>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/work%20with%20mysql'>(4) Working with MYSQL </a>
                  </li>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/useflash'>(5) Using Flash </a>
                  </li>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/getandpost'>(6) GET and POST</a>
                  <li>
                  <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/urlscontrolling'>(7) Urls Controlling</a>
                  </li>
                  <li>
                    <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/work%20with%20pg'>(8) Working With PostgreSql</a>
                    </li>
                    <li>
                      <a href='https://github.com/mohannad-aldulaimi/Dragon-ring-readmefiles-test/tree/main/work%20with%20sqlite'>(9) Working With Sqlite</a>
                    </li>
                  </li>
                </ul>
        </li>
              </div>

  <hr/>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>