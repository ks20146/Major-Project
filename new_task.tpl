%#template for the form for a new task
<p>What do you want to add?:</p>
<form action="/new" method="GET">
  <input type="text" size="100" maxlength="100" name="task">
  <input type="submit" name="save" value="save">
</form>
