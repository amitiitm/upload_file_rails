# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Deployment instructions

* How to check this application
* setup by using bundle install
* goto advance rest client and post url http://localhost:3000/pictures/upload and select image file
* with field name as picture in body, content type = multipart/formdata
* If you want to call this as API endpoint : http://localhost:3000/pictures/upload
* Request Type POST, Parameters picture

* to list all images just hit GET : http://localhost:3000/pictures

* OUTPUT 

{
"status": 200,
"files": [
  "/home/systemname/MyWorkspace/jquery-direct-upload/public/image_files/provider_inbox.png",
  "/home/systemname/MyWorkspace/jquery-direct-upload/public/image_files/cloudinary_error.png"
],
}