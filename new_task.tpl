%#template for the form for a new task
<body style="background-color:ghostwhite;">
<h1 style="font-family:calibri;">
<h1>What do you want to add?:</h1>
<form action="/new" method="GET">
  <input type="text" size="100" maxlength="100" name="task">
  <input type="submit" name="save" value="save">
</form>
