%#template for editing a task
%#the template expects to receive a value for "no" as well a "old", the text of the selected ToDo item
<body style="background-color:ghostwhite;">
<strong style="font-family:calibri;">The ID for this task is {{no}}</strong>
<form action="/edit/{{no}}" method="get">
  <input type="text" name="task" value="{{old[0]}}" size="100" maxlength="100" placeholder="This task is empty!">
  <select name="status">
    <option>Edit task?</option>
    <option>Delete forever?</option>
  </select>
  <br>
  <input type="submit" name="save" value="save">
</form>