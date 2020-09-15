# gravida.
-----
Be sure to see the rest of my work on:
[Virtual Portfolio](https://www.linkedin.com/in/bree-warren/) | [LinkedIn](https://www.linkedin.com/in/bree-warren/) |
[Github](https://github.com/breewarren) | 
[Medium](https://video.com/blahblahblah)
### Technical Description: 
A Command Line Interface App with CRUD functioning, incorporating:
* Object Relational Mapping (with ActiveRecord)
* SQL Databases (using sqlite3)
* Object Orientation Models (via Ruby)
* User-Friendly Navigation (with TTY prompts)

### App Description:
DESCRIPTION GOES HERE!!!!!!!! 

-----
## Instructions
        In the terminal, run:
        - 'bundle install' to download neccesary gems
        - 'ruby app/run.rb' to begin the application
----
## Models & Relationships

### User | Pregnancy (Join Model) | MedicalProvider
<br />

### User <br />
* A User has many Pregnancies <br />
* A User has many MedicalProviders, through Pregnancies <br />

### Pregnancy <br />
* A Pregnancy belongs to a User <br />
* A Pregnancy belongs to an MedicalProvider <br />

### Provider <br />
* A MedicalProvider has many Pregnancies <br />
* A MedicalProvider has many Users, through Pregnancies <br />

## SQL Database Table Properties
### User Table Properties
* First Name

* Username
* Password
* Email Address
* Age

### Pregnancy Table Properties
* Description (ex: Name of Baby)

* Active Status (Ongoing or Concluded)
* Number of Weeks
* Due Date
* Date of Deliver/Loss
* Risk Level (Low or High)
* Life Status (Living, Stillbirth, Miscarriage, or Abortion)
* Delivery Type (Vaginal or Ceserean Section)
* Sex
* Quantity (if Twins, Triplets, etc.)
* Delivery Date
* User_ID (Foreign Key)
* MedicalProvider_ID (Foreign Key)

### MedicalProvider Table Properties
* Name
* Credentials
* Practice Name
* Years Experience
* Ratings (Star System)
* Subspecialty (Maternal Fetal, Infertility, etc.)

--------

## CRUD Abilities, aka User Stories
"." Designates class methods | "#" Designates instance methods

### Create
* User can create an account

        User#create_account
* User can create an instance of a pregnancy

        AppCLI.create_pregnancy
* User can create an instance of a MedicalProvider
        
        User#create_medical_provider
### Read
* User can view all account information 

        User#account_info
* User can view all pregnancies specific to oneself

        User#pregnancies
* User can view all MedicalProviders specific to oneself

        User#medical_providers
* User can view the pregnancies specific to the MedicalProvider

        MedicalProvider#pregnancies
* User can view information of a specific MedicalProvider

        MedicalProvider#obgyn_profile_info
#
### Update
* User can update account information

        User#update_account
* User can update an instance of one's own Pregnancy information

        User#update_pregnancy
* User can update an instance of one's own MedicalProvider information

        User#update_medical_provider
#
### Delete:
* User can deactivate one's own account

        User#deactivate_account
* User can delete an instance of a Pregnancy speficic to oneself

        User#delete_pregnancy
* User can delete an instance of a MedicalProvider specific to oneself

        User#delete_medical_provider
#
### Additional Methods:
* Users with existing account can input their username and password 
        
        AppCLI.username_login
        AppCLI.password_login
* User can exit the program by typing the letter "x" and pressing "enter" 
        
        AppCLI.exit

-----

### Video Demo:
 [Video Demo Link](https://video.com/blahblahblah)


## Thank you! <br> Bree Warren

