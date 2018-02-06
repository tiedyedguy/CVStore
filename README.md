## Welcome to my CVStore Blockchain Project.

This project allows anyone to store a basic Resume/CV on the Ethereum block chain.  The only cost to doing this is the transaction fees, there are no other costs.


### Displaying your own Resume/CV
This project is currently set up to show the creator's CV, but can easily be changed to show yours.

Here is how to do it:

1. Fork this project
2. Send your Resume/CV data to the Smart Contract
3. Change the "Address" variable in the variables.js to your Ethereum Address


To send your data to the Smart Contract, you can use the quick page of sendData.html with the use of a software like MetaMask.  Also, you can use a service like www.MyEtherWallet.com 's Contract section.

## Functions of the Smart Contract

The contract is broken up into six sections.  They are "Full Name", "Summary", "Jobs", "Educations", "Projects", and "Contacts."

The "Full Name" is the name at the top of the Resume/CV.  "Full Name" has two functions called setFullName() and getFullName(address).

"Summary" is the executive summary of the Resume/CV.  "Summary" has two functions called setSummary() and getSummary(address).

"Jobs" are the listing of employment history. It has the ability to list Company Name, Job Title, Job Duties, Start Date and End Date for each Job.  "Jobs" has five functions: addJob(companyName, companyTitle, companyDuties, StartDate, EndDate), changeJob(index, companyName, companyTitle, companyDuties, StartDate, EndDate), deleteJob(index), getNumberOfJobs(address), getJobs(address, index).  Jobs added to the contract are 0 based index. So the first one you add is 0. If you delete a job in the middle of the arry it will reindex them.

"Educations" are the listing of educational achievements. It has the ability to list Educational Facility, Educational Degree, Start Date, and End Date for each Educational achievement.  "Educations" has five functions: addEducation(educationLocation, educationDegree, educationStartDate, educationEndDate), changeEducation(index, educationLocation, educationDegree, educationStartDate, educationEndDate), deleteEducation(index), getNumberOfEducations(address), getEducations(address, index).  Educations added to the contract are 0 based index. So the first one you add is 0. If you delete an education in the middle of the arry it will reindex them.

"Projects" are the listing of projects. It has the ability to list Project Name, Project Description, Project URL, and Start Date for each Project.  "Projects" has five functions: addProject(projectName, projectDesc, projectURL, StartDate), changeProject(index, projectName, projectDesc, projectURL, StartDate), deleteProject(index), getNumberOfProjects(address), getProjects(address, index).  Projects added to the contract are 0 based index. So the first one you add is 0. If you delete a project in the middle of the arry it will reindex them.

"Contacts" are the listing of contact methods. It has the ability to list a Service Name and User Name for each contact.  "Contacts" has five functions: addContact(contactService, contactUserName), changeContact(index, contactService, contactUserName), deleteContact(index), getNumberOfContacts(address), getContacts(address, index).  Contacts added to the contract are 0 based index. So the first one you add is 0. If you delete a contact in the middle of the arry it will reindex them.
Some example contacts to add are ("LinkedIn", "TieDyedGuy") or ("GitHub","TieDyedGuy")

