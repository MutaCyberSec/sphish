
import flask
from flask import Flask , request , render_template , redirect , url_for
from werkzeug.utils import redirect
import wtforms
import gridfs
from wtforms import FileField , StringField,Form , validators , TextAreaField
from pymongo import MongoClient
from flask_wtf import FlaskForm
import base64
from bson.binary import Binary
from werkzeug.utils import secure_filename
import os
url = "localhost:27017"
client = MongoClient(url)
database = client['Kip']
coll =database['pics']
fs = gridfs.GridFS(database)
application = Flask(__name__)
    
upload_folder = 'static/images'
application.config['UPLOAD_FOLDER'] = upload_folder
ALLOWED_EXTENSIONS = set(['txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'])
@application.route('/' , methods = ["POST" , "GET"])
def home():
    if request.method == "POST":
        if "img" in request.files:
            
        
            name = request.form['name']    
        
            pic = request.files['img']
            
            filename = pic.filename
            def allowed_file(filename):
                return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS
            
            if allowed_file(filename):
                
                
                pic.save(os.path.join(application.config['UPLOAD_FOLDER'], filename))
                
                image = upload_folder +  "/" + filename
                
                #with open(image, "rb") as f:
                    #encoded = Binary(f.read())
                
                with open("image", "rb") as image2string:
                    converted_string = base64.b64encode(image2string.read())
                    

                
                coll.insert_one({"filename" : filename , "image" : converted_string , "name" : name})
                
                os.remove(image)
         
            
            #fs.put(datas, filename = name)
            #return redirect(url_for('view_pic'))
    
    
    return render_template("add_pic.html")


@application.route('/view_pic/')
def view_pic():
    the_image = coll.find_one({"name" : "yeah"})
    
    bina = the_image['image']
    
    name = the_image['name']
    
    
    return render_template("view_pic.html" , name = name , bina = bina)

if __name__ == '__main__':
    application.secret_key == "wassupmfsdsgf"    
    application.run(debug = True)
