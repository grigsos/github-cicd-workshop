## Capstone project

Using what you have learnt so far, you are asked to make a project

### Goal

Make a GitHub project that concerns an API server in a language of your choice. 

For Python you can use Flask or FastAPI, for Node.js you can use Express.js or Koa.js, for Java you can use Spring Boot, etc. 

However the implementation and it's functionality is your responsability, as we will support you through the CICD process and do not know every language and framework.

### Requirements
The project should have the following features:

- A CI pipeline that runs tests and linters
- A CD pipeline that pushes the the image to a cloud provider/Docker Hub
- A docker image that you can run locally and query the API server through a browser or curl

### Bonus

- Generate API documentation with Swagger or ReDoc during the CD pipeline and publish it to GitHub Pages
- Scan the docker image for vulnerabilities with a tool like Trivy
- The API server should query a free online API for data, such as the weather in Leuven depending on the queries that you have passed into it
