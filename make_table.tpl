%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p></p><h3>Your TODO Items:</h3><p></p>
%for row in rows:
  %id, title = row
  
  %for col in row:
    
  %end
  
%end
<table border="1"><tbody><tr><td>{{col}}</td><td><a href="/edit/{{id}}"> Edit</a></td>
  </tr></tbody></table>
<p>Create <a href="/new">New</a> item</p>
<p>Show <a href="/done">Done Items</a></p>