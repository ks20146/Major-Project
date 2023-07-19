%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<h1 style="font-family:calibri; font-size:30px;">Anything you have to do today?</h1>
<body style="background-color:ghostwhite;">
<form action="/new" method="GET">
  <input type="text" size="100" maxlength="100" name="task" placeholder="Type something here!">
  <input type="submit" name="save" value="save">
</form>
<table border="1">
<th>ID</th>
<th>Name of Task</th>
 %for row in rows:
   <tr>
   %for col in row:
     <td>{{col}}</td>
   %end
   </td><td><a href="/edit/{{row[0]}}" style="font-family:calibri;"> Edit</a></td>
 %end
 </table>

 </body>