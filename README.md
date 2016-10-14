 Assignment: Architecting a scalable and secure static web application in AWS
 Task 1: Creating and Deploying a running instance of a web server using a configuration managment tool (Here I use puppet)
 Task 2: Securing the application and exposing appropriate posts using puppet certificate and SSL 
 Task 3: Develop and apply automated tests to validate the correctness of the server configuration

Solution:

This project, bootstraps a instance in aws, using bootstrap script. 
This script provisions instances with puppet agent running.
I have assumed that puppet master has auto sign on,

The puppet master has modules to include apache and to have the index.html file.

The manifests also does redirects http requests to https.

Useful ports are open using the aws module.
