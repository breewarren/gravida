- edit readme
- edit license
- finish readme!


app: gravida
(latin for a pregnant woman)

Assocations:

User
has many Pregancies
has many ObGyns through Pregnancies

Pregnancy
belongs to a user
belongs to an ObGun

ObGyn
has many Pregnancies
has many Users through Pregnancies


Table Attributes:

User
name
username
password
age
email

Pregnancy
pregnancy description (baby's name(s)) - 
pregnancy status (ongoing, concluded)
number of weeks  - 
birth/death status (stillborn, live, abortion, miscarriage)
delivery type (vaginal, ceserean section)
gender
multiple vs singleton (twins, triplets, etc.)
due date
date of delivery/loss
received/receiving prenatal care? (yes or no)
risk level (low or high)
patient id
obgyn_id

ObGyn
name
practice name
gender
years experience
ratings (* to *****)
subspecialty (maternal fetal, infertility, etc.)


Methods:
create
    User#create_account (user can create an account) (.create)
    User#create_pregnancy (user can create an instance of a pregnancy) (.create)
    User#create_obgyn (user can create an instance of an obgyn) (.create)
read
    User#user_profile_info (returns user instances :users table properties)
    User#pregnancies (all pregnancies specific to user) (find_by or where)
    User#obgyns (all obgyns specific to the user) (find_by or where)
    ObGyn#pregnancies (user's pregancies specific to the obgyn) (find_by or where)
    ObGyn#obgyn_profile_info (return's obgyn instance's :obgyns table properties)
update
    User#update_account (user can update column values of their :users table) (.update)
    User#update_pregnancy (user can update column values of their :pregnancies table) (.update)
    User#update_medical_provider (User can update MedicalProvider information)
delete
    User#deactivate_account (user can deactivate an account) (.destroy)
    User#delete_pregnancy (user can delete an instance of a pregnancy) (.destroy)
    User#delete_obgyn (user can delete an instance of an obgyn) (.destroy)
additional
    user
        User#gpa_calculator
        User#gpa_results (with description/terminology)
    pregnancy
        Pregnancy#num_of_pregnancies (.count)
        Pregnancy#first_time (.first)
        Pregnancy#trimester (based on # weeks)
        Pregnancy#find_by_baby_name (find instance of pregnancy by baby name)
        Pregnancy#term_length (based on weeks, full or preterm)
    obgyn
        ObGyn#highest_reviewed (.maximum)
        ObGyn#experienced (more than 10 years experience) (.where)
interface-based
    AppCLI.start
    AppCLI.welcome
    AppCLI.login
    AppCLI.homepage
    AppCLI.affirming_message (women being powerful, etc)
    AppCLI.comforting_message (if baby was lost)
    AppCLI.about_gravida
    AppCLI.exit



 
* A MedicalProvider has many Users, through Pregnancies <br />