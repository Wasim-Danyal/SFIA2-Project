# Travel Roulette
**A random travel destination generator to discover amazing places for your next trip.**

## Contents

- [Project Brief](#Project-Brief)
	* [Resources](#Resources)
   * [Brief](#brief)
   * [Additional Requirements](#Additional-Requirements)
- [Project Approach](#My-Approach)
   * [Previous Project Reflection](#Previous-Project-Reflection)
   * [Initial Design](#Initial-Design)
   * [Implemented Approach](#Implemented-Approach)
   * [Tools](#Tools-used)
- [Application Design](#Application-Design)
   * [User Interface](#UI)
- [Risk Assessment](#Risk-Assessment)
- [CI Pipeline](#CI-Pipeline)
- [Testing](#Testing)
	* [Unit Testing](#Unit-Testing) 
	* [Integration-Testing](#Integration-Testing) 
	* [Coverage Report](#Coverage-Report) 
 - [Project Review](#Project-Review)
 	* [Known Issues](#Known-Issues)
   * [Future Improvements](#Future-Improvements)
- [Author](#Author)


## Project Brief

### Resources: 
 
- Project Tracking: https://wdprojects.atlassian.net/jira/software/projects/SP/boards/6

- Presentation: https://docs.google.com/presentation/d/1JXVnIQAHeAK6ObPgQj72CAIi_3lRLfPxG7FVDkNBsYI/edit

- Risk Assessment: https://docs.google.com/spreadsheets/d/12LZTFQikM4--7DIpsfTX4mA11b8i3oXAg9AW9WCVlz8/edit?usp=sharing


### Brief
The brief that has been assigned is to create an application that generates “Objects” upon a set of predefined rules. The objective for the architechture for this project is to create a service-orientated architecture the application, this application must be made up of at least 4 services which work together, the targets for each service are:

- Service 1: The main service which will render templates used to interact with the application, this will be responsible for communicating with the services.


- Service 2: Generate a random object which will be used with the object generated from service 3, these will both be based on to generate an object for service 4.


- Service 3: Same objective as service 2.


- Service 4: Generate a final object, this will be determined based on the values generated by service 3 & 4.


### Additional Requirements
 - Asana board (or equivalent)
 - Application fully integrated using the Feature-Branch model into a VCS which will be built through a CI server and deployed via a cloud VM
 - The project mut be deployed using containerisation such as docker and an orchestration tool
 - The project must make use of a reverse proxy for user accessibility
 -  A webhook should be used so Jenkins recreates and deploys after any changes are made
 - Create an Ansible Playbook that will provision the environment that the application needs to run
 - The project must follow the Service-Orientated achitecture thats has been asked for
 

## Project Approach

### Previous Project Reflection
Overall, my previous project met the requrements which was to create a functioning CRUD application. I deployed my CRUD application with Jenkins & Gunicorn. My initial approach to the project was to deploy the application with gunicorn in  SystemD from Jenkins, in the end i did not deploy it via SystemD, I ended up deploying it with gunicorn through the Jenkins console. This was to ensure that if any changes were made for deployment durng the development phase the console  could be changed, for example if i were to test the application through jenkins without gunicorn i could change it to deploy through python3 app.py and avoid any colliding services, in this case if a SystemD service was in place for deployment. The reason i ended up going with gunicorn through Jenkins is because of a change of VM, deploying the application via gunicorn through Jenkins meant i could focus on core functionalities to meet project specification. As well as reflecting on deployment, looking at other key areas from the previous project there was alot of PFI. One being the risk assessment. The risk assessment for my SFIA-1 project was detailed enough to meet the criteria in stage 4 which requires the risk assessment to follow a matrix. Following up on the PFI for the risk assessment, more detail needs to be implemented, for example it will need more columns to explain procedures in place to overcome the risk and potentially going to detail about the aftermath of a risk. Another key area for PFI was in the application itself, reflecting on feedback the initial database structure used by the application needed to differ from the structure of the flask blog which was done before the project. The database only had two tables with a single one to many relationship, functionally this meant that the programme would work with a relationship however it was outlined that the structure should have a minimum of two relationships. Looking back on this PFI, future database structures will need to implement multiple table relationships.

### Initial Approach
The initial approach for the project specification was to create an application with 4 services which communicate with eachother and return values that generate a random country, a city in that country and logic in service 4 which returns whether or not the trip is paid for and which transport is to be used. Below is the initial approach to the structure of services:
- Service 1 : Render a template which displays results from POST/GET methods to other services
- Service 2 : Return a random country
- Service 3 : Return a city in the country generated from service 2
- Service 4 : Return whether or not the trip is paid for and what transport is used, the logic behind this is dependant on registered users location, for example if a user is     close to the generated
### Implemented Approach
The actual implemented approach is the same as the initial approach however the only change is service 4. Initially service 4's logic would be complex as it requires logic dependant on values in a database. Though the intial service 4 was complex, it was not impossible however i wanted to implement a simpler task for service 4 so it can reflect directly on the project specification for that service. This means the structure of the services would be simplified and easier to understand in order to see how it meets the specification. Below is the implemented structure:
- Service 1 : Render a template which displays results from POST/GET methods to other services
- Service 2 : Return a random country
- Service 3 : Return a city in the country generated from service 2
- Service 4 : Return a food which is popular in the city. The food would be randomly returned from a list in the service. In comparison to the previous initial approach, the 	   service still follows the project specification as there is still logic which is implemented in the code.
### Tools used

## Application Design

### User Interface 

## Risk Assessment

## CI Pipeline

## Testing

### Unit Testing

### Integration Testing

### Coverage Report

## Project Review

### Known Issues

### Future Improvements

## Author 

Wasim Danyal
