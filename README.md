# Pewlett-Hackard-Analysis


## Project Overview
Pewlett Hackard(PH) is a large company that has been around for a very long time. They have a diverse work force boasting many thousands of employees in different business units. PH understands that many baby boomers currently in their employment will begin to retire and the rate of retirement is expected to increase at a rapid rate. As such, PH is looking to ensure they are prepared for this eventuality by understanding who will qualify for retirement packages and which positions will need to be filled. Some department managers have proposed offering part-time roles to employees who qualify as mentors so they can act as advisors to newly hired employees. Currently, the information used for this analysis resides in Excel/VBA and PH has decided to migrate to a pdAdmin/Postgres database solution to find answers to the challenges outlined. By upgrading their methods for analysis, PH is hoping to utilize SQL as a tool to prepare analytical reports and look for possible solutions and recommendations.

- Deliverables:
  1. Determine the number of retiring employees by title
  2. Identify employees who are eligible to be in the mentorship program
------------------------------------------------------------------------------------------------------------

## Resources
- Database Client: pgAdmin v5.2
- Database Server: PostgreSQL v13
- Database ERD Design: www.quickdatabasediagrams.com
- CSV Files created: retirement_titles.csv, unique_titles.csv, retiring_titles.csv, mentorship_eligibility.csv, mentor_roles.csv
- Software: Visual Studio Code 1.56.2
------------------------------------------------------------------------------------------------------------

## Results

To prepare the different analyses requested by PH, the original data was loaded into postgreSQL database tables and relationships establised to give us a working understanding of the data structure. The following entity relationship diagram(ERD) was designed to provide implementation guidance and as a documentary guide for future reference.

![ERD Model](images/EmployeeDB_ERD.png)

### Retiring Employees by Title

- From the list below we are able to determine that there are 90,398 employees who meet the criteria for the retirement package. A summary and sample list of retirement eligible employees are provided below for reference.
- A closer examination shows that 63.8% of employees are either Senior Staff or Senior Engineers. These top calibre employees have a lot of working business intelligence and it would be wise to have them transfer as much information as possible to new employees or their junior counterparts prior to retirement.
- In order to execute an effective retiring/hiring process it is very important to have a trained and reliable management team in place within the different business units.
- It should also be noted that there are 2 managers who are likewise eligible for retirement. As this is a leadership position it is important that new managers are vetted and become understudies as soon as possible to ensure that proper leadership is in place to ensure a smoother transition for PH.

### Employee Groups Qualifying for the Retirement Package

![Retiring Titles](images/Retiring_Titles.png)

### Retiring Titles Table

![Unique Titles](images/Unique_Titles.png)

### Mentorship Eligibility

- Based on the criteria provided, there are 1549 qualified mentors found in current employment at PH. A sample list of these employees are shown below.
- Six of the seven different groups are represented in the list, with no managers qualifying as mentors.
- The mentor eligibility criteria may need to be expanded so PH can have more employees in the mentors pool for assignments.

### Eligible Employees who Qualify as Mentors

![Mentorship Eligibility](images/Mentorship_Eligibility.png)

------------------------------------------------------------------------------------------------------------

## Summary Analysis

- Eventually 90,398 new roles will need to be filled for PH as the impact of retirement begins to unfold for the baby boomers employed at PH.
- Of specific note when analyzing the different business units below, we can see that there are four departments that do not currently have a manager allocated in a leadership position.
- Further, 2 of the 5 current managers are eligible for the retirement package as identified below in the table report.
- It is imperative that new and qualified managerial candiates be hired or promoted internally and placed into these position as soon as possible. 
- Managerial input for each business group will be a necessity in job assignments and allocating mentors in a suitable manner.

### Managers by Department

![Summary Managers](images/Summary_Managers1.png)

### Managers Qualifying for Retirement

![Retirement Managers](images/Summary_Managers2.png)

- There are 1,549 employees who qualify as retirement-ready mentors from the list below. The following breakdown outlines the different associated mentorship roles each can provide to new employees of PH.
- Generally, it appears that there is a good level of representation amongst the different employee groups.
- Each employee group is covered except the manager group as noted previously.

### Mentors by Title

![Mentorship Titles](images/Mentorship_Titles.png)

- Further analysis shows us that if all employees accepted mentorship positions who qualify, they will have the following ratios of new employees to actively advise.
- We can see that the Sr. Engineer position should be a point of emphasis as there is a ratio of 1 mentor for a possible 174 new employees. Viable considerations would be to change the mentorship criteria or seek mentors outside of PH in the broader engineering business community or perhaps employees of PH who have retired recently in similar roles.
- Likewise, we have no qualified managerial mentors available to advise new managers.
- The mentorship ratios below will need to be further analyzed with management to determine what a good ratio level should be for each mentor candidate with respect to newly hired employees.

### Mentorship to New Employee Ratio

Title               | Mentorship ratio  |
--------------------|--------------------
 Sr. Engineer       | 1 to 174          |
 Sr. Staff          | 1 to 50           |
 Engineer           | 1 to 28           |
 Staff              | 1 to 79           |
 Technique Leader   | 1 to 59           |
 Assistant Engineer | 1 to 23           |
 Manager            | zero              |
 ----------------------------------------