# Dragon-Ring --> Working With PostGreSql DataBase
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">    
      <li>Working With Postgre Sql</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <strong>(8) Working With Postgre Sql :-</strong><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>PGQuery().</li>
    <li>PGadd2db().</li>
    <li>PGresult().</li>
    <li>PGdelete().</li>
    <li>pgupdatedb()</li>

  </ul>
  <Strong>How To connect to PostgreSql Database:-</Strong>
  <ul>
    <li>
      (1) Create An Object from Dragon-PostGreSql-Ext in the route.ring file :-<br>
    <pre>oDPG = new DpG</pre>
    </li>
    <li>
      (Or) Use Importlib(cLibName) in manage.ring file to import the lib to <br>
          "Batch/ImportedLibs" file then load it in Route.ring file...
    </li>
    <li>
      (2) Make Sure To Set This Connection Values Like<br>
    <pre>oDPG = new DpG
    oDPG{
        pg_username = "postgres"
        pg_password = " "
        pg_database = "Dragon_ring"
        pg_port     = "5432"
        pg_conn     = NULL
}</pre>
    </li>
  </ul>
    <br>
  <p>PG --> means Postgre Sql</p>
  <br>
    <strong>PGQuery(Statement)</strong><br>
    <p>This function take one parameter contain sql statement.</p>
    <br>
    <p>
    <strong>PGADD2DB(Table_name , Table_values).</strong><br>
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
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
oDPG = new DpG
    oDPG{
        pg_username = "postgres"
        pg_password = " "
        pg_database = "Dragon_ring"
        pg_port     = "5432"
        pg_conn     = NULL
        PGADD2DB('employees(id , name , salary)' , [1, "Mohannad" , 1800] )
        }</pre>
  <br>
<strong>PGRESULT(select_statment).</strong><br>
For example :-
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
oDPG = new DpG
    oDPG{
        pg_username = "postgres"
        pg_password = " "
        pg_database = "Dragon_ring"
        pg_port     = "5432"
        pg_conn     = NULL
/* This code has written in route.ring (just for testing) */
res = PGRESULT('SELECT * From employees ;')
for col=1 to len(res)
    for row=1 to len(res[col])
        html(res[col][row] + TAB) 
    next
    html('&lt;br/&gt;')
next
}</pre>
  
<strong>The result is :-</strong><br>
    <pre style="background-color:yellow;">
      id        name        salary
      1       Mohannad       1800  </pre>
  <br>

  <strong>PGDELETE(table_name , column_name , column_value).</strong>
  <p>This function take three parameters :-</p>
  <ul>
    <li>table_name :- The name of the table .</li>
    <li>column_name :- The parimary key column like ( id ) .</li>
    <li>column_value :- The Value of the parimary key (column_name).</li>
  </ul>
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
oDPG = new DpG
    oDPG{
        pg_username = "postgres"
        pg_password = " "
        pg_database = "Dragon_ring"
        pg_port     = "5432"
        pg_conn     = NULL
/* This code has written in route.ring (just for testing) */
PGDELETE('employees' , 'id' , 1 ) 
/* This code will delete the id,name,salary from database for the employee id 1 */
}</pre>
  
  <strong>PGUPDATEDB(table_name,column_name,column_value,columns_names,columns_values)</strong>
  This function take five parameters :-
  <ul>
    <li>table_name:- The name of the Table .</li>
    <li>column_name :- the name of the column you want to update by .</li>
    <li>column_value :-The Value of (column_name).</li>
    <li>columns_names :- list of columns that you want to update.</li>
    <li>columns_values :- list of values that you want to update (depending columns_names)</li>
  </ul>
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
oDPG = new DpG
    oDPG{
        pg_username = "postgres"
        pg_password = " "
        pg_database = "Dragon_ring"
        pg_port     = "5432"
        pg_conn     = NULL
/* This code has written in route.ring (just for testing) */
table_columns = [ "id" , "name" , "salary" ] 
Table_values  = [ 2 , "Mohannad Aldulaimi" , 1700]
PGUPDATEDB('employees', 'id' , 1 ,table_columns, Table_values)
}</pre>
  this function will make a sql statement like this :- 
  <br>
  (UPDATE 'employees' SET id=2 ,name="Mohannad Aldulaimi" , salary=1700 where id=1) 
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
  <br>
      <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>