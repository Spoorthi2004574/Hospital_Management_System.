🏥 Hospital Management System
A web-based Java application for managing hospital operations like patient registration, doctor assignments, and admission reports using JSP, Servlets, JDBC, and MySQL following the MVC architecture.

🚀 Features
Add new patient records

Update existing patient details

Delete discharged patient records

View all patient data

Generate reports:

Patients admitted within a date range

Patients with specific ailments

Patients assigned to specific doctors

📁 Project Structure

HospitalWebApp/
├── WebContent/
│   ├── index.jsp
│   ├── patientadd.jsp
│   ├── patientupdate.jsp
│   ├── patientdelete.jsp
│   ├── patientdisplay.jsp
│   ├── reports.jsp
│   ├── report_form.jsp
│   └── report_result.jsp
├── src/
│   ├── com/
│   ├── dao/
│   │   └── HospitalDAO.java
│   ├── model/
│   │   └── Patient.java
│   └── servlet/
│       ├── AddPatientServlet.java
│       ├── UpdatePatientServlet.java
│       ├── DeletePatientServlet.java
│       ├── DisplayPatientsServlet.java
│       ├── ReportServlet.java
│       └── ReportCriteriaServlet.java
└── WEB-INF/
    └── web.xml