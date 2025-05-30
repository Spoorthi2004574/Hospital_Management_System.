# 🏥 Hospital Management Web Application 

## 📌 Project Purpose

To administer patient records, doctor assignments, and appointment scheduling. Modules include:
- Adding patient info
- Updating records
- Deleting records
- Viewing patient details

Reports include:
- Patients admitted in a date range
- Patients with specific ailments
- Patients assigned to specific doctors

---

## 🗄️ 1. Create Table

```sql
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    AdmissionDate DATE,
    Ailment VARCHAR(255),
    AssignedDoctor VARCHAR(100)
);
```

---

## 📝 2. Insert Sample Data

```sql
INSERT INTO Patients (PatientID, PatientName, Age, Gender, AdmissionDate, Ailment, AssignedDoctor) VALUES
(1, 'Spoorthi', 21, 'Female', '2025-05-14', 'Fever', 'Dr.Sheith'),
(2, 'sweekrithi',20, 'Female', '2025-05-26', 'cough', 'Dr.Harish'),
(3, 'Shrivasthan', 45, 'Male', '2025-05-07', 'Acute pancreatisis', 'Dr.Chandra');
```

---

## 📁 Project Structure

```
HospitalWebApp/
├── build/
├── src/
│   └── main/
│       └── java/
│           └── com/
│               ├── dao/
│               │   └── HospitalDAO.java
│               ├── model/
│               │   └── Patient.java
│               └── servlet/
│                   ├── AddPatientServlet.java
│                   ├── DeletePatientServlet.java
│                   ├── DisplayPatientsServlet.java
│                   ├── EditPatientServlet.java
│                   ├── ReportByAilmentServlet.java
│                   ├── ReportByDateServlet.java
│                   ├── ReportByDoctorServlet.java
│                   └── UpdatePatientServlet.java
├── webapp/
│   ├── META-INF/
│   ├── WEB-INF/
│   ├── index.jsp
│   ├── editPatient.jsp
│   ├── patientadd.jsp
│   ├── patientdisplay.jsp
│   ├── patientupdate.jsp
│   ├── reportByAilment.jsp
│   ├── reportByDate.jsp
│   ├── reportByDoctor.jsp
│   └── reportForm.jsp

```

---

## ⚙ Installation & Setup

### ✅ Step 1: Clone/Download the Project
Download or clone the project files and maintain the above folder structure.

---

### ✅ Step 2: Database Configuration

- Start **MySQL Server**
- Run the SQL scripts provided above
- Update database credentials in `HospitalDAO.java`:

```java
connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hospital_management", 
    "your_username", 
    "your_password");
```

---

### ✅ Step 3: Add MySQL JDBC Driver

- Download **MySQL Connector/J** from the official MySQL site  
- Add the `.jar` file to `WEB-INF/lib`  
- If using an IDE like Eclipse, **add it to your build path**

---

### ✅ Step 4: Deploy to Tomcat

- Create a **Dynamic Web Project** in your IDE  
- Add all files and folders according to structure  
- Deploy the project on **Apache Tomcat**
- Start the **Tomcat server**

---

### ✅ Step 5: Access the Application

Open your browser and go to:

```
http://localhost:8080/HospitalWebApp/
```

---

## 🧩 Modules & Functionalities

| Module         | Description                       |
|----------------|-----------------------------------|
| PatientAdd     | Register new patients             |
| PatientUpdate  | Modify patient details            |
| PatientDelete  | Remove patient records            |
| PatientDisplay | View all current patient data     |
| Reports        | Filtered queries by date, ailment, doctor |

---

## 📊 Reports

- Patients admitted within a **specific date range**
- Patients with a **specific ailment**
- Patients assigned to a **specific doctor**

---

## 🖼 Output Screenshots

> 📸 Add your screenshots to a folder named `screenshots/` and reference them below.

### 🏠 Home Page  
![Home](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/d8ea235b5c5c1a3cc0c5b1a7f275d1e672c09fa2/Screenshots/home.png)

### ➕ Add Patient  
![Add](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/add_patient.png)

### 📝 Update Patient  
![Edit](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/edit_patient.png)

### ❌ Delete Patient  
![Delete](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/35b7b6d634cc8d98a966abdb8516dbdae4c53fc4/Screenshots/delete_patient.png)

### 📋 View Patients  
![View](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/patient_view.png)

### 📊 Generate Reports   
![By Ailment](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/by_ailment.png) 
![By Ailment view](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/By_Aliment_view.png) 
![By Date](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/95807f19efaba41e49b631079cd29984eca098e5/Screenshots/BY_DATE_1.png)   
![By Date view](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/95807f19efaba41e49b631079cd29984eca098e5/Screenshots/BY_DATE.png)  
![By Doctor](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/By_doctor.png)
![By Doctor view](https://github.com/Spoorthi2004574/Hospital_Management_System./blob/2d364dd37d7898d49846dc4387557fa1e12f278a/Screenshots/By_doctor_view.png)
