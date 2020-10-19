<?php 
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="userManualStyles.css">

        <meta charset="utf-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>

    <body>
        <div class="login_help">
            <!-- Login page Help -->
            <hr />
            <h2>Logging into the system</h2>
            <hr />
            <p>
                The Manic Cycles system is not a website for marketing purposes. It is a web-based 
                management system aimed at streamlining business processes. The information and features
                that the system provide are controlled and special authorization is needed before access 
                to certain features can be granted. As such, every authorized user would have been given 
                a username acompanied by a password that they can use to access the system. This is done 
                through the login page shown below.
            </p>

            <img src="userManualImages/login_page.png" alt="login page">

            <p>
                To login to the system, the user can follow the following list of steps:
                <ol>
                    <li>Enter a valid username and password into the fields provided.</li>
                    <li>Press the "Login" button below the fields</li>
                </ol>

                If the user is authorized to access the system, they will be logged in. Otherwise, the system
                will not allow the user to take any further action besides reentering a correct password that 
                matches the given username. If further help is needed, the user can click on the "Need Help?" 
                text below the "Login" button to be redirected to this document.
            </p>
        </div>
        
        <?php 
            if(isset($_SESSION['type'])){
                if($_SESSION['type'] == "administrator"){
                    ?>
                        <div class="userManager">
                            <!-- User Manager Help -->
                            <hr />
                            <h2>User Manager</h2>
                            <hr />

                            <p>
                                Within the manic cycles system there are three types of users with different levels of authorization namely 
                                administrators (full access), managers (full access minus the ability to manage other users) and mechanics 
                                (very limited access). The owner must be provided with an interface to manage these users in the event of 
                                changes to staff. To provide this functionality, we’ve developed a User Management sub-system which only 
                                the administrator has access to.
                            </p>

                            <img src="userManualImages/user_manager.png" alt="user manager layout">

                            <ol>
                                <li><i>Add User</i> Button: This allows the administrator to add a new user to the system.</li>
                                <li><i>Search bar:</i> Allows for the administrator to search for a specific user.</li>
                                <li><i>Filter:</i> This feature allows the administrator to only see certain groups of users.</li>
                                <li><i>User Information card:</i> This small window shows all the information of a given user.</li>
                                <li><i>View User</i> Button: This allows the administrator to be taken to a page to view the information of a specific user.</li>
                                <li><i>Delete User</i> Button: Used when the administrator wishes to delete a user’s account.</li>
                                <li><i>Logout</i> Button: Allows the user currently logged in to terminate his/her session.</li>
                                <li><i>Help</i> Button: Allows the user to access the help page in the event that said user gets stuck or wants more information on a given feature.</li>
                                <li><i>Navigation bar:</i> The user can use this bar to navigate to the other sub-systems that make up the Manic Cycles system.</li>
                            </ol>

                            <b>Adding a New User</b>
                            <p>
                                In the event of new staff members joining the organization, the administrator needs to be able to give them the 
                                access to the system that they need in order to do their job. This can be done by pressing the Add User button 
                                on the User Management home page.
                            </p>

                            <img src="userManualImages/add_user_form.png">

                            <p>
                                All fields in the resulting form are required. The administrator must also be careful to ensure that the 
                                correct user type is chosen so that the new user will receive the correct access. Once the administrator is 
                                satisfied with the information, they can simply click the Add User button on the bottom of the form and the 
                                new user’s information will be added to the system which they can use to access the system.
                            </p>
                        </div>
                    <?php
                }
            }
        ?>

        <?php 
            if(isset($_SESSION['type'])){
                if($_SESSION['type'] == "administrator" || $_SESSION['type'] == "manager"){
                    ?>
                        <div class="service_manager_admin">
                            <!-- Quote Manager Help -->
                            <hr />
                            <h2>Service Manager</h2>
                            <hr />

                            <b>Service Manager Page</b><br>
                            <p>
                                The following section describes the functionality that will be available to a manager/owner on the service manager page after successfully logging into the system:
                            </p>

                            <img src="userManualImages/Service_manager_home.png" alt="Service Manager Home page"><br>

                            <ol>
                                <li>A manager/owner can filter the list of job cards by using the list of filters made available to them.</li>
                                <li>A manager/owner can search for a specific job card by entering the card’s number into the search area and clicking the “Search” button.</li>
                                <li>A manager/owner can create a new job card by clicking on the “Create Jobcard” button.</li>
                                <li>A list of information relative to each job card is provided on the Service Manager page. This information includes the customer’s details, the status of the card (which could be “Completed” or “In Progress”), the date the card was created etc. The manager/owner is also able to see whether the mechanic assigned to the card has made changes to the card (which could have been caused by having posting to the card or having updated the status of a task associated to the card) that have yet to be seen by a manager/owner.</li>
                                <li>A specific job card can be navigated to by clicking on the “View Jobcard” button associated to the card.</li>
                                <li>A manager/owner can also delete any job card from the list by clicking on the card’s “Delete Jobcard” button.</li>
                                <li>A navigation bar located at the bottom of the page can be utilised by the manager/owner in order to navigate to other system facilities, access a help page or through which they can logout.</li>
                            </ol>

                            <b>Jobcard Page</b><br>
                            <p>
                                The following section describes the functionality that will be available to a manager/owner on the job card page:
                            </p>

                            <img src="userManualImages/jobcard_admin.png" alt="Jobcard page - Administrator/Manager"> <br>

                            <ol>
                                <li>
                                    The manager/owner will be shown information pertaining to the specific card they have selected from the Service Manager page. When necessary they will be able to make changes to this information by using the scrollbar associated to the information section and clicking the “Edit Jobcard Information” button shown beneath: <br>
                                    <img src="userManualImages/edit_jobcard_btn.png" alt="Edit Jobcard button">
                                </li>

                                <li>The manager/owner is also able to view the card’s information along with the information pertaining to its associated tasks in a fashion fit for printing.</li>
                                <li>Each job card also has a forum area with which the manager/owner will be able to communicate with the mechanic the card has been issued to.</li>
                                <li>Each job card will have a series of tasks associated to it that describe the work the assigned mechanic is expected to perform. Once a task has been created this information can be altered by a manager/owner. After clicking on the “Edit Task Information” button a series of forms will appear where the task’s information was previously listed (as displayed in the image taken after Task 2’s “Edit Task Information” button was pressed). Once the required information has been entered the manager/owner will be able to submit the alteration by clicking on the “Update Task Information” button. Alternatively, they will be able to cancel the update by clicking on the “Cancel” button.</li>
                                <li>A manager/owner can delete a task relating to a job card by clicking on the “Delete Task” button associated to it.</li>
                                <li>When necessary a manager/owner will be able to create a new task associated to the job card by clicking on the “Create New Task” button.</li>
                                <li>A navigation bar located at the bottom of the page can be utilised by the manager/owner in order to navigate to other system facilities, access a help page or with which they are able to logout.</li>
                            </ol>
                        </div>
                    <?php
                }
            }
        ?>

        <?php 
            if(isset($_SESSION['type'])){
                if($_SESSION['type'] == "administrator" || $_SESSION['type'] == "manager"){
                    ?>
                        <div class="bicycle_manager">
                            <!-- Bicycle Manager Help -->
                            <hr />
                            <h2>Bicycle Manager</h2>
                            <hr />

                            <p>
                                The ability to manage bicycles is critical to the Manic Cycles system. The entire system is created around bicycles. Bicycles also have a lot of information that relate to them as well as to their owners. To address the management needs of this crucial business aspect, we’ve developed an entire sub system to deal with the issue of bicycle management.
                            </p>

                            <img src="userManualImages/bicycle_management_home.png">

                            <ol>
                                <li><i>Add New Bicycle</i> Button: This button can be used to bring up a form that will allow the user to add a new bicycle to the system.</li>
                                <li><i>Search bar</i>: The search bar can be used to look up a bicycle or a group of bicycles by using criteria like a client name, bicycle ID and more.</li>
                                <li><i>Bicycle Information Row</i>: This small window shows a summary of information regarding a specific bicycle and also allows the user to perform further actions with a particular bicycle by clicking on the bicycle row that they wish to change. Clicking on this row will redirect them to a page that contains more information on that bicycle and allows the user to update the information of the bike.</li>
                                <li><i>Logout</i> Button: When the user has completed their tasks on the system, they can use this button to terminate their session.</li>
                                <li><i>Help</i> Button: If the user gets confused or stuck in any way, the help button can be used to view the user manual for the system.</li>
                                <li>Navigation bar: The user can use this bar to navigate to the other sub-systems that make up the Manic Cycles system.</li>
                            </ol>

                            <b>Adding a New Bicycle</b><br>
                            <p>
                                When the “Add new Bicycle” button is pressed, a form will pop up that the user can use to enter information regarding a bicycle that has not yet been added to the system.
                            </p>

                            <img src="userManualImages/add_new_bicycle_form.png" alt="Adding new bicycle">

                            <p>
                                The form will request that the user enter client and bicycle information. Information that is required is marked with a “*” to indicate to the user its importance. The form will not allow the user to add a bicycle without this information. If the user wishes to add further information such as wheelset, frame and other details to the bicycle they will have to do so after the bicycle has been created.
                            </p>

                            <p>
                                If all the criteria of the form are met and the user presses the “Add Bicycle” button, the information will be added to the system database and the user will be alerted of the successful completion of the process. If the user wishes to cancel the process of adding a new bicycle while the form is open, he or she need only click the “Cancel” button, the X on the top right corner of the form, or click anywhere on the page outside of the form.
                            </p>

                            <b>Viewing and Editing Bicycle Information</b>
                            <p>
                                If the user wishes to view more information relating to a particular bicycle, they need only click the View button of the bicycle in question. This will redirect the user to a page from which they can view more information of the bicycle and also proceed to editing any of the data fields that are shown.
                            </p>

                            <img src="userManualImages/view_bicycle_page.png" alt="Viewing/Editing bicycle info">

                            <p>
                                If a bicycle is being viewed for the first time, additional information regarding the bicycle frame, suspension, wheel set, drive train, breaks and other information will by default be empty and will require the user to edit these fields if they wish to do so. If information regarding a bicycle has changed, this page will also allow for the user to edit or update existing information. This is done by pressing the Edit Bicycle Info button.
                            </p>

                            <p>
                                Upon clicking the Edit Bicycle Info button, all of the fields will now be editable and the user can change the data where they wish. Once the user is satisfied, they can press the save button which will update the database.
                            </p>

                            <p>
                                Information relating to the bicycle’s frame, suspension, wheel set, drive train, brakes and other information can be edited in the same way.
                            </p>

                            <b>Deleting a Bicycle from The System</b>
                            <p>
                                If the user presses the Delete button, all information related to that client will be permanently deleted. This data will not be recoverable and thus a prompt will ensure that the user is intentionally trying to delete the information regarding a bicycle.
                            </p>
                        </div>
                    <?php
                }
            }
        ?>
        
        <?php 
            if(isset($_SESSION['type'])){
                if($_SESSION['type'] == "administrator" || $_SESSION['type'] == "manager"){
                    ?>
                        <div class="quote_manager">
                            <!-- Quote Manager Help -->
                            <hr />
                            <h2>Quote Manager</h2>
                            <hr />

                            <p>
                                The quote manager allows an owner or manager to create, delete or otherwise manage quotes for customers. These quotes are intended 
                                to serve as a cost estimate that the client can use to make a decision on whether to make use of the service that is being offered. 
                            </p>

                            <img src="userManualImages/Quote_manager_home.png" alt="Quote management - Home"><br>
                            
                            <p>
                                <b>Basic components of the Quote Manager:</b>
                                <ol>
                                    <li><i>Search bar</i>: Used to search for a specific quote or a group of quotes</li>
                                    <li><i>Create Quote</i> button: When clicked this button will open a form that the user can use in order to create a new quote.</li>
                                    <li>All quotes that are being displayed will show up in the table below the "Create Quote" button.</li>
                                    <li><i>Quote field:</i> Shows all of the data that pertains to a given quote.</li>
                                    <li><i>View Quote</i> button: Lets the user view the quote to see the services that are associated to the quote.</li>
                                    <li><i>Delete Quote</i> button: Allows the user to delete a quote.</li>
                                    <li><i>Navigation bar:</i> Lets the user travel to the other subsystems within the Manic Cycles system</li>
                                    <li><i>Logout</i> button: Lets the user logout of the system.</li>
                                    <li><i>Help</i> button: Lets the user access the help page of the Manic Cycles system.</li>
                                </ol>
                            </p>

                            <p>
                                <b>Viewing Quote Services</b><br>
                                If a user clicks on the "View" button of a quote, they will be redirected to that specific quotation. On this page,
                                the user can see information regarding the services that pertain to a given quotation. This page also allowes the user 
                                to add more services to the quote or to delete a service. A tally is kept of the total amount of all the services of 
                                the quote and is displayed in the top-right corner of the quote.
                            </p>

                            <img src="userManualImages/quote_manager_view.png" alt="Viewing a quote"><br>
                        </div>
                    <?php
                }
            }
        ?>

        <?php 
            if(isset($_SESSION['type'])){
                if($_SESSION['type'] == "mechanic"){
                    ?>
                        <div class="service_management_mech">
                            <!-- Service Manager (Mechanic) Help -->
                            <hr />
                            <h2>Mechanic Service Manager</h2>
                            <hr />
                            <p>
                                The following section describes the functionality that will be available to a mechanic once 
                                they have successfully logged into the system:
                            </p>

                            <img src="userManualImages/serviceManager_mechanic.png" alt="serviceManagement - Mechanic">

                            <p>
                                <ol>
                                    <li>A mechanic can filter the list of job cards by using the list of filters made available to them.</li>
                                    <li>A mechanic can search for a specific job card by entering the card’s number into the search area and clicking the “Search” button</li>
                                    <li>A list of information relative to each job card is provided on the Service Manager page which includes the customer’s full name, the status of the card (which could be “Completed” or “In Progress”), the date the card was created etc. The mechanic can also see whether a managerial user has made changes to the card (which could have been caused by having posting to the card, having changed the card’s information or having altered the list of tasks associated to the card) that have yet to be seen by them.</li>
                                    <li>A specific job card can be navigated to by clicking on the “View Jobcard” button associated to the card.</li>
                                    <li>A navigation bar located at the bottom of the page can be utilised by the mechanic to refresh the Service Manager page, access the help page or with which they can logout.</li>
                                </ol>
                            </p>
                        </div>
                    <?php
                }
            }
        ?>

        <div class="system_logout">
            <!-- Service Manager (Mechanic) Help -->
            <hr />
            <h2>Logging out</h2>
            <hr />

            <p>
                When a user has finished their business on the Manic Cycles system, it is good security practise for a user to terminate his/her 
                session by pressing the Logout button which can be found on the bottom navigation bar on each of the pages.
            </p>
        </div>
    </body>
</html>