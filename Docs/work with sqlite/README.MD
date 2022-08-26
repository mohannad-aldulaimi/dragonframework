# Dragon-Ring --> Working With Sqlite DataBase
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">    
      <li>Working With Sqlite</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <strong>(9) Working With Sqlite :-</strong><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>Query().</li>
    <li>add2db().</li>
    <li>result().</li>
    <li>delete().</li>
    <li>update()</li>

  </ul>
  <h2>Connect to Sqlite :</h2>
  <p>
      (1) Add This line to Route.ring :- <br><pre>oDsqlite = new Dsqlite(c_DB_Namae)</pre> <br>
      (2) You Can Find the db file in folder 'Databases'
    <br> 
  </p><br>
  <p>After that You Can use this useful functions</p>
  <p></p>
  <br>
    <strong>Query(Statement)</strong><br>
    <p>This function take one parameter contain sql statement.</p>
    <br>
    <p>
    <strong>ADD2DB(Table_name , Table_values).</strong><br>
     <p>This function take two parameters as :-
    <ul>
      <li>Table_name :- the name of the table and tables columns if you want ...</li>
    <li>Table_values :- list of values you want to add to PostgreSql database .</li>
    </ul>
    <br>
    For example:-
    </p>
    <p>
    <pre style="background-color:yellow;">
#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
oDsqlite = new Dsqlite(str2hex('My_test')+'.db')
oDsqlite{
  Query('Create Table Comp(
  emp_id integer,
  emp_name TEXT NOT NULL
  );')	
  add2db('Comp',[1,'Mohannad'])
}</pre>
  <br>
<strong>RESULT(select_statment).</strong><br>
For example :-
    <pre style="background-color:yellow;">
#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
oDsqlite = new Dsqlite(str2hex('My_test')+'.db')
oDsqlite{
  res = Result('Select * from comp;')
}</pre>
  <br>
<Strong>Or</Strong><br>
    <pre style="background-color:yellow;">
#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
aResult = []
oDsqlite = new Dsqlite(str2hex('My_test')+'.db')
oDsqlite{
  res = 'Select * from comp;'
  aResult = res
}</pre>
  
<strong>The result is :-</strong><br>
    <pre style="background-color:yellow;">
      id        name       
      1       Mohannad</pre>
  <br>

  <strong>DELETE(table_name , column_name , column_value).</strong>
  <p>This function take three parameters :-</p>
  <ul>
    <li>table_name :- The name of the table .</li>
    <li>column_name :- The parimary key column like ( id ) .</li>
    <li>column_value :- The Value of the parimary key (column_name).</li>
  </ul>
    <pre style="background-color:yellow;">
#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
oDsqlite = new Dsqlite(str2hex('My_test')+'.db')
oDsqlite{
  Delete('comp','id',1)
}</pre>
  
  <strong>UPDATE(table_name,column_name,column_value,columns_names,columns_values)</strong>
  This function take five parameters :-
  <ul>
    <li>table_name:- The name of the Table .</li>
    <li>column_name :- the name of the column you want to update by .</li>
    <li>column_value :-The Value of (column_name).</li>
    <li>columns_names :- list of columns that you want to update.</li>
    <li>columns_values :- list of values that you want to update (depending columns_names)</li>
  </ul>
    <pre style="background-color:yellow;">
#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
oDsqlite = new Dsqlite(str2hex('My_test')+'.db')
oDsqlite{
  Update('comp','id',1,['name'],'Mohannad Al-Dulaimi')
}</pre>
  this function will make a sql statement like this :- 
  <br>
  (UPDATE 'comp' SET name="Mohannad Aldulaimi"  where id=1) 
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
       <br>
           <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>