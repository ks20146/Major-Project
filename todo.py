import sqlite3
from bottle import route, run, debug
from bottle import template
#----------------------------------------------------------------------
@route("/")
@route("/todo")
def todo_list():
    """
    Show the main page which is the current TODO list
    """
    conn = sqlite3.connect("todo.db")
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    result = c.fetchall()
    c.close()
    
    output = template("make_table", rows=result)
    return output
if __name__ == "__main__":
    debug(True)
    run()