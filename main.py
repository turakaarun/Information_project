from bottle import Bottle, run, template, request, redirect, response, static_file
from hashlib import sha256
import sqlite3
import random
import string

app = Bottle()

# Initialize SQLite database
conn = sqlite3.connect('turaka.db')
c = conn.cursor()

# Create table for users
c.execute('''CREATE TABLE IF NOT EXISTS users
             (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE, password TEXT, is_master INTEGER)''')

# Create table for passwords
c.execute('''CREATE TABLE IF NOT EXISTS passwords
             (id INTEGER PRIMARY KEY AUTOINCREMENT, website TEXT, username TEXT, password TEXT, user_id INTEGER,
              FOREIGN KEY(user_id) REFERENCES users(id))''')
#create table for hased_passwords
c.execute('''CREATE TABLE IF NOT EXISTS hashed_password
             (id INTEGER PRIMARY KEY AUTOINCREMENT, website TEXT, username TEXT, hashed_password TEXT, user_id INTEGER,
              FOREIGN KEY(user_id) REFERENCES users(id))''')
conn.commit()

# Master password
MASTER_PASSWORD = "Arun"
MASTER_HASH = sha256(MASTER_PASSWORD.encode()).hexdigest()

@app.route('/')
def index():
    return template('login')

@app.route('/login', method='POST')
def login():
    username = request.forms.get('username')
    password = request.forms.get('password')
    
    c.execute("SELECT * FROM users WHERE username=?", (username,))
    user = c.fetchone()
    
    if user and sha256(password.encode()).hexdigest() == user[2]:
        response.set_cookie("user_id", str(user[0]))
        response.set_cookie("is_master", str(user[3]))
        redirect('/passwords')
    else:
        return "Invalid username or password"

@app.route('/master_login', method='GET')
def master_login():
    return template('master_login')

@app.route('/master_login', method='POST')
def master_login_post():
    password = request.forms.get('password')
    
    if sha256(password.encode()).hexdigest() == MASTER_HASH:
        response.set_cookie("user_id", "0")  
        response.set_cookie("is_master", "1")
        redirect('/passwords')
    else:
        return "Invalid master password"

@app.route('/register', method='GET')
def register():
    return template('register')

@app.route('/register', method='POST')
def register_post():
    username = request.forms.get('username')
    password = request.forms.get('password')
    
    
    c.execute("SELECT * FROM users WHERE username=?", (username,))
    if c.fetchone():
        return "Username already exists. Please choose a different username."
    
    hashed_password = sha256(password.encode()).hexdigest()
    
    
    c.execute("INSERT INTO users (username, password, is_master) VALUES (?, ?, ?)", (username, hashed_password, 0))
    conn.commit()
    
    redirect('/')

@app.route('/passwords')
def passwords():
    user_id = request.get_cookie("user_id")
    is_master = request.get_cookie("is_master")
    
    if is_master == "1":
        c.execute("SELECT * FROM hashed_password")
    else:
        c.execute("SELECT * FROM passwords WHERE user_id=?", (user_id,))
        
    passwords = c.fetchall()
    
    return template('passwords', passwords=passwords)

@app.route('/add', method='GET')
def add():
    return template('add')

@app.route('/add', method='POST')
def add_post():
    website = request.forms.get('website')
    username = request.forms.get('username')
    password = request.forms.get('password')
    user_id = request.get_cookie("user_id")
    
    
    if len(password) < 8:
        return "Password length is too low. Minimum length should be 8 characters."

    hashed_password = sha256(password.encode()).hexdigest()
    #inserting hashed password into table
    c.execute("INSERT INTO hashed_password (website, username, hashed_password, user_id) VALUES (?, ?, ?, ?)",
              (website, username, hashed_password, user_id))

    
    c.execute("INSERT INTO passwords (website, username, password, user_id) VALUES (?, ?, ?, ?)",
              (website, username, password, user_id))
    conn.commit()

    redirect('/passwords')

@app.route('/generate')
def generate():
    length = 12  
    if 'length' in request.query:
        length = int(request.query['length'])
    
    password = ''.join(random.choice(string.ascii_letters + string.digits + string.punctuation) for _ in range(length))
    return password

@app.route('/logout')
def logout():
    response.delete_cookie("user_id")
    response.delete_cookie("is_master")
    redirect('/')

@app.route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')



if __name__ == '__main__':
    run(app, host='localhost', port=8080, debug=True)
