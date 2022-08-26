# Dragon-Ring --> Get And Post Forms Methods
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">    
      <li>GET and POST</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <strong>(6) GET and POST:-</strong><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>What is GET and POST Methods ?</li>
    <li>How to use GET Method ?</li>
    <li>How to use POST Method ?</li>
  </ul>

  <br><p>I will explain to you what and how to use GET and POST in Dragon-FramWork</p><br>
  <strong>Note:-</strong><p>We have two Methods
    <ul>
      <li>(1) GET .</li>
      <li>(2) POST .</li>
    </ul>
   </p><br>
  <strong>(1)What is GET and POST Methods ?</strong>
    <br><p>The (GET) and (POST) Methods is methods that you can use in forms ...<br>The GET method can be used for the normal information because it is not secure ...
    </p>

  <strong>How to use GET Method ?</strong><br/>
  <strong>Example :- </strong>
  <br>
 <strong>In the route.ring we have this code</strong><br>  
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('testget',:ringfile,'testget.ring')</pre>

<br>
<strong>In the website/testget.ring we have this code :</strong>
    <pre style="background-color:yellow;">
import system.web
dring{
  html(template('testget.html',self))
}</pre>
  <br>
<strong>In the website/templates/testget.html we have this code</strong><br>
    <pre style="background-color:yellow;">&lt;form method='GET' &gt;
    &lt;input name='mytext' /&gt;
    &lt;button name='btn'&gt;Click Me&lt;/button&gt;
&lt;/form&gt;</pre>
  <br>
  <p>When we write any thing and click on the button we will show something like this in the 'URL' </p>
    <pre style="background-color:yellow;">http://localhost/testget?mytext=testing+get&btn=Submit</pre>
  <br>
  <br>
  <strong>How to use POST Method ?</strong><br/>
<p>It is more simple and secure than GET method</p>
  <br>
 <strong>Example :- </strong>
  <br>
 <strong>In the route.ring we have this code</strong><br>  
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('testpost',:ringfile,'testpost.ring')</pre>

<br>
<strong>In the website/testpost.ring we have this code :</strong>
    <pre style="background-color:yellow;">
import system.web
dring{
    html(template('testpost.html',self))
}</pre>
  <br>
<strong>In the website/templates/testpost.html we have this code</strong><br>
    <pre style="background-color:yellow;">&lt;form method='POST' &gt;
    &lt;input name='mytext' /&gt;
    &lt;button name='btn'&gt;Click Me&lt;/button&gt;
    {%=btn([:name='Click Me 2' , :href='testpost' ])%}
&lt;/form&gt;</pre>
  <br>
  <p>When we write any thing and click on the button we will show something like this </p>
    <pre style="background-color:yellow;">http://localhost/testpost</pre>
  
<strong>btn(alist) function :-</strong>
this function can be used with post and get but you have to use it with POST because there is no another way ...
<br>You can not write something like this:-
    <pre style="background-color:yellow;">&lt;form method='POST' &gt;
    &lt;input name='mytext' /&gt;
    &lt;button name='btn'&gt;Click Me&lt;/button&gt;
&lt;/form&gt;</pre>
  
  It will not work !!<br>
  the correct way is use this function instead of &lt;button&gt; tag ...<br>
  it takes list contain :-
  <ul>
    <li>btn([:name]) :- the name and value of the button{%=btn([:name='mybtn'])%}</li>
    <li>btn([:href]) :- the page route that you want to POST the information to . {%=btn([:href='testpost',:name='mybtn'])%}</li>
    <li>btn([:class] :- The class name (also you can use bootstrap classes))</li>
    <li>btn([:style]) :- The css code and style .{%=btn([:style='background-color:red;'])%}</li>
  </ul>
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
           <br>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>