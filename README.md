# Resume CV Website - Made with Python Flask in a DevOps way

Developing a web application in Python with Flask Framework, templating with Bootstrap, serving with Gunicorn and Nginx and using Docker with Docker Compose as container solution for development.


### Project intro

This website is a Proof of Concept of a project developed following DevOps philosophy and tools.  
The Backend programming language is Python, frontend programming languages are HTML5, CSS3, Javascript.  
The MVC Web Framework used is Flask, configured to be served by a Gunicorn Application Server, behind a webserver Nginx in a reverse-proxy mode.The grid-system is Bootstrap.  
As containerization system I chose Docker (with docker-compose as a non-distributed orchestrator in development environment).  
Unit tests are made with pytest and Selenium Webdriver to auto-simulate user interactions with the browser. I use Git as Version Control System and a remote Github repository, deeply integrated with GitHub Actions, in order to enable automatic tests in Continuous Integration mode.
This website is deployed via Helm onto a Kubernetes (K3S) Cluster available on Oracle Cloud.
In order to prevent DDoS attacks and increase performances, the website is in a CDN with CloudFlare.
Production deployed app is available here: https://www.maculade.com  

### Docker

Change your working directory in the latest one created via `git clone`, where Dockerfile is present, and launch these commands:

```
docker build -t flask_website .
docker run --name test_flask_website -it --env PORT=5000 -p 80:80 flask_website:latest
```

### docker-compose

Create your own `docker-compose.yml` in the folder above the folder you created via `git clone`, with the following YAML syntax:

```
version: '3'

services:
  flask_website:
    restart: always
    build: ./flask_website
    environment:
      - PORT=5000
    ports:
      - "80:80"
```

and then launch these commands:

```
docker-compose build flask_website
docker-compose up flask_website
```
