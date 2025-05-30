<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.model.Patient" %>
<%
Patient patient = (Patient) request.getAttribute("patient");
if (patient == null) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Patient - Error</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
        }

        .error-container {
            background-color: white;
            border-radius: 8px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }

        .error-icon {
            font-size: 3rem;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .error-message {
            color: #495057;
            font-size: 1.25rem;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-icon">⚠️</div>
        <p class="error-message">Patient not found.</p>
    </div>
</body>
</html>
<%
} else {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Patient</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        .main-container {
            max-width: 900px;
            margin: 30px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .header-section {
            background-color: #2c7be5;
            padding: 30px;
            text-align: center;
            color: white;
        }

        .main-title {
            font-size: 2rem;
            font-weight: 600;
            margin: 0;
        }

        .patient-id-badge {
            display: inline-block;
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            padding: 6px 15px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 500;
            margin-top: 15px;
        }

        .form-container {
            padding: 30px;
        }

        .patient-form {
            display: grid;
            gap: 20px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group.full-width {
            grid-column: 1 / -1;
        }

        .form-label {
            display: block;
            color: #495057;
            font-size: 0.9rem;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-input, .form-select {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .form-input:focus, .form-select:focus {
            border-color: #2c7be5;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(44, 123, 229, 0.25);
        }

        .form-select {
            appearance: none;
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23343a40' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M2 5l6 6 6-6'/%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 0.75rem center;
            background-size: 16px 12px;
        }

        .submit-section {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            margin-top: 20px;
        }

        .submit-button {
            padding: 12px 30px;
            border: none;
            border-radius: 6px;
            background-color: #2c7be5;
            color: white;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.15s ease-in-out;
        }

        .submit-button:hover {
            background-color: #1a68d1;
        }

        .cancel-button {
            padding: 12px 30px;
            border: 1px solid #ced4da;
            border-radius: 6px;
            background-color: white;
            color: #495057;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.15s ease-in-out;
        }

        .cancel-button:hover {
            background-color: #f8f9fa;
        }

        @media (max-width: 768px) {
            .form-grid {
                grid-template-columns: 1fr;
            }

            .submit-section {
                flex-direction: column;
            }

            .submit-button, .cancel-button {
                width: 100%;
            }
        }

        @media (max-width: 480px) {
            .header-section {
                padding: 20px;
            }

            .main-title {
                font-size: 1.5rem;
            }

            .form-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <div class="header-section">
            <h2 class="main-title">Edit Patient</h2>
            <div class="patient-id-badge">
                Patient ID: <%= patient.getPatientID() %>
            </div>
        </div>

        <div class="form-container">
            <form action="updatePatient" method="post" class="patient-form">
                <input type="hidden" name="patientID" value="<%= patient.getPatientID() %>"/>
                
                <div class="form-grid">
                    <div class="form-group">
                        <label class="form-label">Name:</label>
                        <input type="text" name="patientName" class="form-input" value="<%= patient.getPatientName() %>" required/>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Age:</label>
                        <input type="number" name="age" class="form-input" value="<%= patient.getAge() %>" required/>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Gender:</label>
                        <select name="gender" class="form-select" required>
                            <option value="Male" <%= "Male".equals(patient.getGender()) ? "selected" : "" %>>Male</option>
                            <option value="Female" <%= "Female".equals(patient.getGender()) ? "selected" : "" %>>Female</option>
                            <option value="Other" <%= "Other".equals(patient.getGender()) ? "selected" : "" %>>Other</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Admission Date:</label>
                        <input type="date" name="admissionDate" class="form-input" value="<%= patient.getAdmissionDate() %>" required/>
                    </div>
                    
                    <div class="form-group full-width">
                        <label class="form-label">Ailment:</label>
                        <input type="text" name="ailment" class="form-input" value="<%= patient.getAilment() %>" required/>
                    </div>
                    
                    <div class="form-group full-width">
                        <label class="form-label">Assigned Doctor:</label>
                        <input type="text" name="assignedDoctor" class="form-input" value="<%= patient.getAssignedDoctor() %>" required/>
                    </div>
                </div>

                <div class="submit-section">
                    <button type="button" class="cancel-button" onclick="history.back()">Cancel</button>
                    <input type="submit" value="Update Patient" class="submit-button"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
<%
}
%>