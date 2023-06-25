# PROJECT: make a to-do list for middle-aged students and workers. OPTIONAL: use html to make more appealling to the eyes

# required imports
import sqlite3
from bottle import route, run, debug, template, request
# separating these for organization
@route("/")
@route("/todo")
def todo_list():
# shows the current to do list and information
    conn = sqlite3.connect("todo.db")
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    result = c.fetchall()
    c.close()
    
    output = template("make_table", rows=result)
    return output

# lets the user edit values
@route('/new', method='GET')
def new_item():

    if request.GET.save:

        new = request.GET.task.strip()
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()

        c.execute("INSERT INTO todo (task,status) VALUES (?,?)", (new,1))
        new_id = c.lastrowid

        conn.commit()
        c.close()

# returns message and updates the current list to show new information
        return '<p>The new task was inserted into the database item, the ID is %s</p> <a href="/">View List</a>' % new_id
             
    else:
        return template('new_task.tpl')

# updates the ID number and the text  
@route('/edit/<no>', method='GET')
# for changing already existing items
def edit_item(no):

    if request.GET.save:
        edit = request.GET.task.strip()
        status = request.GET.status.strip()

        if status == 'open':
            status = 1
        else:
            status = 0

        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("UPDATE todo SET task = ?, status = ? WHERE id LIKE ?", (edit, status, no))
        conn.commit()


        return '<p>The item number %s was successfully updated</p> <a href="/">View List</a>' % no
    else:
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("SELECT task FROM todo WHERE id LIKE ?", (str(no),))
        cur_data = c.fetchone()

        return template('edit_task', old=cur_data, no=no)

# NOTES! the edit thing IS working, it's just not getting to the right link. for example, if you type in http://localhost:8080/edit/2 it will work

debug(True)
run(reloader=True)