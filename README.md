# OSA testing using Robot Framework (RF)

This folder contains scripts related to testing OSA using RF.

More information about OSA can be found on the following confluence page [OSA - Ondersteuning Schenk Applicatie](https://confluence.belastingdienst.nl/display/OSA/OSA+-+Ondersteuning+Schenk+Applicatie). 


## Setup project Locally

### Install Python
You can download python v3.7 from the following link and install it on your machine.
[www.python.org/downloads](https://www.python.org/downloads/)  
Make sure to check the box *Add Python to Path* during installation.

Verify the installation by running the following command that will return the version of python if correctly installed.
```shell
python -V
```
Using a virtual environment is recommended. All python dependencies will be isolated in that environment.
A virtual environment will automatically be created during the initialization of the project.


### Initialize the Project
First clone the project locally then initialize the project.
The initialization will perform the following:
* Create and activate a virtual environment (venv)
* Initialize and update submodule
* Install submodule by running setup.py to use as package 
* Install python dependencies using requirements.txt

```shell
# Clone project
git clone ssh://git@bitbucket.devnet.klm.com:7999/bdem/component-reliability.git
# Initialize the Project by running the init_project.bat file
init_project.bat
```

### Optional: Install an IDE and a RF plugin
For syntax highlighting and to add smart editing features to your RF code install an IDE and a plugin.
E.g. in PyCharm the *IntelliBot #patched* plugin is a good choice. 


## Run Project Locally

### Start libraries
```shell
# Start libraries
Libraries.bat
```

### Run RF Tests
Run test cases using CLI, an IDE plug-in or Ride

Ride can be started by executing ride.py. This script can be found in the Scripts folder in the venv
```shell
# Start Ride
python venv\Scripts\ride.py
```

the following is a basic CLI command to run RF test cases
```shell
# Run test cases using CLI
Robot test_cases_file.robot
```