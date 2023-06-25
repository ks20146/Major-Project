%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p></p><h3>Your TODO Items:</h3><p></p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  </td><td><a href="/edit/{{row[0]}}"> Edit</a></td>
%end
<br>
</tr> <td><tbody><tr><td>{{col}}
</br>
  </tr></tbody></table>
<p>Create <a href="/new">New</a> item</p>
<p>Show <a href="/done">Done Items</a></p>