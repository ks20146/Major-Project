%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p></p><h3>Your stuff to do today!</h3><p></p>
<style>

<p>What do you want to add?:</p>
<form action="/new" method="GET">
  <input type="text" size="100" maxlength="100" name="task">
  <input type="submit" name="save" value="save">
</form>



margin: auto;
<table border="1">
 %for row in rows:
   <tr>
   %for col in row:
     <td>{{col}}</td>
   %end
   </td><td><a href="/edit/{{row[0]}}"> Edit</a></td>
 %end
 </table>



