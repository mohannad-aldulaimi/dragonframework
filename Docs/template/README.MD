# Dragon-Ring --> Templates
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">
     <li>Templates</li>
  </ul>
  <hr/>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <h1>(2) Templates :-</h1><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>Templates Functions .</li>
    <li>Using Templates .</li>
    <li>Create Template Application.</li>

  </ul>
  <br>
    <strong>Templates Functions</strong><br>
    <p>Note: The templates functions read file from this path 'website/templates' </p>
    <p>We have a different functions for templates :-</p>
    <br>
    <h2>(1) Template(html_Page_name,Object)</h2><br>
    <p>To use this functions you have to create a controller for the html page you want to use .
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('HelloWorld',:ringfile,"hello.ring")</pre>
  <br>
<strong>In the hello.ring we have this code</strong><br>
    <pre>
import system.Web
dring{
        html(template('hello.html',null))
     }</pre>  
<br>
<strong>In the hello.html we have this code</strong><br>
    <pre>
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;</pre>
<br>
  The Page source is :- <br>
    <pre>
&lt;!DOCTYPE html&gt;&lt;html lang="en"&gt;
&lt;head&gt;
&lt;meta charset="ISO-8859-1"&gt; 
&lt;meta charset="utf-8"&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"&gt;
&lt;meta name="description" content=""&gt;
&lt;meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"&gt;
&lt;meta name="generator" content="Jekyll v4.1.1"&gt;
&lt;link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.css"&gt;
&lt;script type="text/javascript" src="bootstrap/jq.js"&gt;$(document).ready();
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;
&lt;/body&gt;
&lt;script type="text/javascript" src="bootstrap/bootstrap.js"&gt;
&lt;/script&gt;
&lt;/html&gt;</pre>
<br>
  as you can see we have called the bootstrap and j-Query localy .<br>
  Note:- We will learn how to use templates after we know the template functions .<br>
  <h2>(2) Template_Exe(html_Page_name)</h2><br> 
  It can be used Like the function template()...<br> 
  the difference between template() and template_exe() is the template_exe do not need an Object to execute codes ,So it need one parameter contain the html page name. 
    <pre>
import system.Web
dring{
        html(template_exe('hello.html'))
     }</pre>
<br>
    <h2>(3) website_template(html_Page_name,Object)</h2><br>
    We will talk about this function after version 1.0 ...
    <br>
     <strong>Using Templates </strong><br>
     Now We will learn how to use templates.<br>
     <per style="width:100% .section;">
{%= Ring Expression %}
{%  Ring Statements %}
  </pre><br>
  <h2> Create Template Application.</h2><br>
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('test_template',:ringfile,"test_template.ring")</pre>
  <br>
<strong>In the test_template.ring we have this code</strong><br>
    <pre>
import system.Web
new test_template{start()} 
class test_template
   name = "Mohannad"
   func start
   dring{
   html(template('test_template.html',this))
     }</pre>
><br>
<strong>In the test_template.html we have this code</strong><br>
<pre>
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;
{% for x in 1:5 %}
  &lt;h1&gt;Hello {%=name + ' ' + x %}&lt;/h1&gt;&lt;br/&gt;
{% next %}</pre>
<br>
<strong>The Page source :-</strong><br>
<pre>
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;
&lt;h1&gt;Hello Mohannad 1&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello Mohannad 2&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello Mohannad 3&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello Mohannad 4&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello Mohannad 5&lt;/h1&gt;&lt;br/&gt;</pre>
<br>
  <h2>Another example About Create Template Application.</h2><br>
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('test_template',:ringfile,"test_template.ring")</pre>
  <br>
<strong>In the test_template.ring we have this code</strong><br>
<pre>
import system.Web
   dring{
   html(template_exe('test_template.html'))
     }</pre>
<br>
<strong>In the test_template.html we have this code</strong><br>
<pre>
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;
{% for x in 1:5 %}
  &lt;h1&gt;Hello {%=x %}&lt;/h1&gt;&lt;br/&gt;
{% next %}</pre>
<br>
<strong>The Page source :-</strong><br>
    <pre>
&lt;h1&gt;Hello World From Template .&lt;/h1&gt;
&lt;h1&gt;Hello 1&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello 2&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello 3&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello 4&lt;/h1&gt;&lt;br/&gt;
&lt;h1&gt;Hello 5&lt;/h1&gt;&lt;br/&gt;</pre>
</pre><br>



  <br>
  We will make a CRUD Application After we learn how to use Mysql with Dragon-Ring. 
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>

  <hr/>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring <code>2021-2022</code>.
    </p>