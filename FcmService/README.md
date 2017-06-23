# rubyonrails

Use following :

	Bootstrap( CSS framework) 
	Jquery( Javascript library )
	Rails and Ruby latest version
	GIT (Version control system)
	MySql( Database)
	Rspec (Test Code)
	Devise( )
	Follow coding guideline(add link of our guideline)
	Trello( Project Management system)
	Image upload with carrierwave

Problem statement:
The university student course registration system is unable to cope with the high volume manual process of recording, retrieving and updating each record at registration time. During peak transaction times for each new semester, registration lines are getting longer as well as each student’s waiting and processing time.

So an online student course registration system needs to be developed.

In case of a university course registration process, students will be able to register their courses through online. The available courses will be chosen by the students under a user authentication process. Registered courses should be listed under specific semester for each student.

There should be search activity by Semester Name so that we can see the registered courses under that semester.

          Admin can create semester and mark semester as current semester.

Lastly Admin will update the each semester result and result will be published calculating the CGPA of each subject and result will be emailed to student.

Each student will be able to see their own result through his registered email id.

Analysis
Step 1: Create a database relationship between different tables and specify how they will be related. There will be an image field for the student. Student will have one image.


Step 2: Use mySql for your database and define models, controllers, association and others.
	
	We have different model, controller and view as it will follow the MVC pattern. We used Rails Scaffold generator to define the Models and 	controller. 	

Step 3: Use user authentication through devise gem.

	For user authentication devise has been used through email and password. But for admin user extra one column has been added named admin using boolean data type. By defaults admin field will be false for other user. 		

After 	successful user registration students will be able to see the available courses for their specific semester. And then they will 	get the chance for registration.
	
Step 4: Use validation for each course, semester, registration	

	Here 	comes the validation part. 		
-No student will be allowed to take one course twice in the   same 	semester or other semesters. 	

			-Different semester Type can't be for one specific semester.

Step 5: Search by Semester or course Name. (Use JavaScript)
	
	After 	successful registration every students will be able to search for registration details by semester or course name.

Step 6: Admin panel will update the CGPA for each course under specific semester.	

	Admin will be allowed to update the CGPA for every courses under that 	specific semester.

	Admin will search the registration details by email ID and update the 	result.	

	Here 	validation is CGPA can't be more than 4 for each course. If the Admin gives wrong input it will show the error message to that 	specific field
		
Step 7: Students will be able to see their semester GPA result with each course CGPA	
	After 	CGPA update the students will get their result of his own. 	

