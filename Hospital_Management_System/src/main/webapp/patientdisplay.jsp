<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Patient" %>
<html>
<head>
    <title>Patient List</title>
    <style>
        /* Base Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f5f7fa;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #eaecef;
        }
        
        /* No Patients Message */
        .no-patients {
            text-align: center;
            padding: 40px;
            background-color: #f8f9fa;
            border-radius: 6px;
            margin-bottom: 20px;
            color: #6c757d;
        }
        
        /* Table Styles */
        .table-container {
            overflow-x: auto;
            margin-bottom: 30px;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }
        
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eaecef;
        }
        
        th {
            background-color: #3498db;
            color: white;
            font-weight: 600;
            position: sticky;
            top: 0;
        }
        
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        
        tr:hover {
            background-color: #f1f5f9;
        }
        
        /* Action Buttons */
        .action-btn {
            display: inline-block;
            padding: 6px 12px;
            margin: 2px;
            border-radius: 4px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .edit-btn {
            background-color: #3498db;
            color: white;
            border: 1px solid #2980b9;
        }
        
        .edit-btn:hover {
            background-color: #2980b9;
        }
        
        .delete-btn {
            background-color: #e74c3c;
            color: white;
            border: 1px solid #c0392b;
        }
        
        .delete-btn:hover {
            background-color: #c0392b;
        }
        
        /* Navigation Links */
        .navigation-links {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 20px;
        }
        
        .nav-link {
            display: inline-block;
            padding: 10px 15px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: all 0.3s ease;
            font-weight: 500;
        }
        
        .nav-link:hover {
            background-color: #27ae60;
            transform: translateY(-2px);
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            th, td {
                padding: 8px 10px;
                font-size: 14px;
            }
            
            .action-btn {
                padding: 4px 8px;
                font-size: 12px;
            }
            
            .nav-link {
                padding: 8px 12px;
                font-size: 14px;
            }
            
            .container {
                padding: 15px;
            }
        }
        
        @media (max-width: 576px) {
            .navigation-links {
                flex-direction: column;
            }
            
            .nav-link {
                width: 100%;
                text-align: center;
            }
            
            table {
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }
        }
        
        /* Status Indicators (optional) */
        .status {
            display: inline-block;
            padding: 3px 8px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 500;
        }
        
        .status-active {
            background-color: #d4edda;
            color: #155724;
        }
        
        .status-inactive {
            background-color: #f8d7da;
            color: #721c24;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>All Patients</h2>
    <%
    List<Patient> patients = (List<Patient>) request.getAttribute("patients");
    if (patients == null || patients.isEmpty()) {
    %>
    <div class="no-patients">
        <p>No patients found</p>
    </div>
    <%
    } else {
    %>
    <div class="table-container">
        <div class="table-wrapper">
            <table>
                <tr>
                    <th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Admission Date</th><th>Ailment</th><th>Assigned Doctor</th><th>Actions</th>
                </tr>
                <%
                for (Patient p : patients) {
                %>
                <tr>
                    <td><%= p.getPatientID() %></td>
                    <td><%= p.getPatientName() %></td>
                    <td><%= p.getAge() %></td>
                    <td><%= p.getGender() %></td>
                    <td><%= p.getAdmissionDate() %></td>
                    <td><%= p.getAilment() %></td>
                    <td><%= p.getAssignedDoctor() %></td>
                    <td>
                        <a href="editPatient?id=<%= p.getPatientID() %>" class="action-btn edit-btn">Edit</a>
                        <a href="deletePatient?id=<%= p.getPatientID() %>" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this patient?');">Delete</a>
                    </td>
                </tr>
                <%
                }
                %>
            </table>
        </div>
    </div>
    <%
    }
    %>
    <div class="navigation-links">
        <a href="reportByDate.jsp" class="nav-link">📅 Patients by Date Range</a>
        <a href="reportByAilment.jsp" class="nav-link">🩺 Patients by Ailment</a>
        <a href="reportByDoctor.jsp" class="nav-link">👨‍⚕️ Patients by Doctor</a>
        <a href="addPatient.jsp" class="nav-link">➕ Add New Patient</a>
    </div>
</div>
</body>
</html>