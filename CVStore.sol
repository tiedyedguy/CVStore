pragma solidity ^0.4.16;

contract CVStore {
    
    struct Contact {
        string typeOfService;
        string userName;
    }
    
    struct Job {
        string companyName;
        string title;
        uint startTime;
        uint endTime;
    }
    
    struct Education {
        string learningCenter;
        string knowledgeTitle;
        uint startTime;
        uint endTime;
    }
    
    struct Project {
        string name;
        string description;
        string url;
        uint startTime;
    }
    
    struct FullCV {
        string fullName;
        string summary;
        Contact[] contacts;
        Job[] jobs;
        Education[] educations;
        Project[] projects;
    }
    
    mapping (address => FullCV) CVs;
    
    function () public payable {
        revert();
    }
    
    function setFullName (string fullName) public {
        CVs[msg.sender].fullName = fullName;
    }
    
    function getFullName (address addressCV) view public returns (string) {
        return CVs[addressCV].fullName;
    }

    function setSummary (string summary) public {
        CVs[msg.sender].summary = summary;
    }
    
    function getSummary (address addressCV) view public returns (string) {
        return CVs[addressCV].summary;
    }
    
     function addContact (string typeOfService, string userName) public {
        Contact memory newContact = Contact(typeOfService, userName);
        CVs[msg.sender].contacts.push(newContact);
    }
    
    function changeContact (uint index, string typeOfService, string userName) public {
        require(index < CVs[msg.sender].contacts.length);
        Contact memory newContact = Contact(typeOfService, userName);
        CVs[msg.sender].contacts[index] = newContact;
    }
    
    function deleteContact (uint index) public {
        require (index < CVs[msg.sender].contacts.length);
        for (uint i = index; i<CVs[msg.sender].contacts.length -1; i++){
            CVs[msg.sender].contacts[i] = CVs[msg.sender].contacts[i+1];
        }
        delete CVs[msg.sender].contacts[CVs[msg.sender].contacts.length-1];
        CVs[msg.sender].contacts.length--;
    }
    
    function numberOfContacts (address addressCV) view public returns(uint) {
        return CVs[addressCV].contacts.length;
    }
    
    function getContacts (address addressCV, uint index) view public returns(string, string) {
        return (CVs[addressCV].contacts[index].typeOfService, CVs[addressCV].contacts[index].userName);
    }
    
    function addJob (string companyName, string title, uint32 startTime, uint32 endTime) public{
        Job memory newJob = Job(companyName, title, startTime, endTime);
        CVs[msg.sender].jobs.push(newJob);
    }
    
    function changeJob (uint index, string companyName, string title, uint32 startTime, uint32 endTime) public {
        require(index < CVs[msg.sender].jobs.length);
        Job memory newJob = Job(companyName, title, startTime, endTime);
        CVs[msg.sender].jobs[index] = newJob;
    }
    
    function deleteJob (uint index) public {
        require (index < CVs[msg.sender].jobs.length);
        for (uint i = index; i<CVs[msg.sender].jobs.length -1; i++){
            CVs[msg.sender].jobs[i] = CVs[msg.sender].jobs[i+1];
        }
        delete CVs[msg.sender].jobs[CVs[msg.sender].jobs.length-1];
        CVs[msg.sender].jobs.length--;
    }
    
    function numberOfJobs (address addressCV) view public returns(uint) {
        return CVs[addressCV].jobs.length;
    }
    
    function getJobs (address addressCV, uint index) view public returns(string, string, uint, uint) {
        return (CVs[addressCV].jobs[index].companyName, CVs[addressCV].jobs[index].title,  CVs[addressCV].jobs[index].startTime, CVs[addressCV].jobs[index].endTime);
    }
    
    function addEducation (string learningCenter, string knowledgeTitle, uint32 startTime, uint32 endTime) public{
        Education memory newEducation = Education(learningCenter, knowledgeTitle, startTime, endTime);
        CVs[msg.sender].educations.push(newEducation);
    }
    
    function changeEducation (uint index, string learningCenter, string knowledgeTitle, uint32 startTime, uint32 endTime) public {
        require(index < CVs[msg.sender].educations.length);
        Education memory newEducation = Education(learningCenter, knowledgeTitle, startTime, endTime);
        CVs[msg.sender].educations[index] = newEducation;
    }
    
    function deleteEducation (uint index) public {
        require (index < CVs[msg.sender].educations.length);
        for (uint i = index; i<CVs[msg.sender].educations.length -1; i++){
            CVs[msg.sender].educations[i] = CVs[msg.sender].educations[i+1];
        }
        delete CVs[msg.sender].educations[CVs[msg.sender].educations.length-1];
        CVs[msg.sender].educations.length--;
    }
    
    function numberOfEducations (address addressCV) view public returns(uint) {
        return CVs[addressCV].educations.length;
    }
    
    function getEducations (address addressCV, uint index) view public returns(string, string, uint, uint) {
        return (CVs[addressCV].educations[index].learningCenter, CVs[addressCV].educations[index].knowledgeTitle,  CVs[addressCV].educations[index].startTime, CVs[addressCV].educations[index].endTime);
    }

    function addProject (string name, string description, string url, uint startTime) public{
        Project memory newProject = Project(name, description, url, startTime);
        CVs[msg.sender].projects.push(newProject);
    }
    
    function changeProject (uint index, string name, string description, string url, uint startTime) public {
        require(index < CVs[msg.sender].projects.length);
        Project memory newProject = Project(name, description, url, startTime);
        CVs[msg.sender].projects[index] = newProject;
    }
    
    function deleteProject (uint index) public {
        require (index < CVs[msg.sender].projects.length);
        for (uint i = index; i<CVs[msg.sender].projects.length -1; i++){
            CVs[msg.sender].projects[i] = CVs[msg.sender].projects[i+1];
        }
        delete CVs[msg.sender].projects[CVs[msg.sender].projects.length-1];
        CVs[msg.sender].projects.length--;
    }
    
    function numberOfProjects (address addressCV) view public returns(uint) {
        return CVs[addressCV].projects.length;
    }
    
    function getProjects (address addressCV, uint index) view public returns(string, string, string, uint) {
        return (CVs[addressCV].projects[index].name, CVs[addressCV].projects[index].description,  CVs[addressCV].projects[index].url, CVs[addressCV].projects[index].startTime);
    }
    
    
    
    
    
    
    
    
    
    
    
    
}