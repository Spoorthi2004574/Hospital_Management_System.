<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Patient</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --primary-color: #2a87a5;
            --secondary-color: #1c5d7f;
            --accent-color: #4ecdc4;
            --light-color: #f8f9fa;
            --dark-color: #343a40;
            --success-color: #28a745;
            --danger-color: #dc3545;
            --border-radius: 8px;
            --box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8eb 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background: white;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            width: 100%;
            max-width: 800px;
            overflow: hidden;
        }
        
        .form-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 25px 30px;
            text-align: center;
        }
        
        .form-header h2 {
            font-size: 1.8rem;
            margin-bottom: 5px;
        }
        
        .form-header p {
            font-size: 0.9rem;
            opacity: 0.9;
        }
        
        .form-body {
            padding: 30px;
        }
        
        .form-row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -15px;
        }
        
        .form-group {
            flex: 1 0 200px;
            margin: 0 15px 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--secondary-color);
            font-size: 0.9rem;
        }
        
        input, select {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: var(--border-radius);
            font-size: 0.95rem;
            transition: all 0.3s;
        }
        
        input:focus, select:focus {
            border-color: var(--accent-color);
            box-shadow: 0 0 0 3px rgba(78, 205, 196, 0.2);
            outline: none;
        }
        
        .btn-submit {
            background: var(--accent-color);
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 1rem;
            font-weight: 500;
            border-radius: var(--border-radius);
            cursor: pointer;
            transition: all 0.3s;
            display: inline-block;
            margin-top: 10px;
        }
        
        .btn-submit:hover {
            background: var(--primary-color);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        
        .btn-back {
            display: inline-flex;
            align-items: center;
            color: var(--secondary-color);
            text-decoration: none;
            font-size: 0.9rem;
            margin-top: 20px;
            transition: all 0.3s;
        }
        
        .btn-back:hover {
            color: var(--primary-color);
        }
        
        .btn-back i {
            margin-right: 5px;
            transition: transform 0.3s;
        }
        
        .btn-back:hover i {
            transform: translateX(-3px);
        }
        
        .form-footer {
            text-align: center;
            padding: 0 30px 30px;
        }
        
        @media (max-width: 768px) {
            .form-group {
                flex: 1 0 100%;
            }
            
            .form-header h2 {
                font-size: 1.5rem;
            }
        }
        
        @media (max-width: 480px) {
            body {
                padding: 10px;
            }
            
            .form-header {
                padding: 20px;
            }
            
            .form-body {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-header">
            <h2>Add New Patient</h2>
            <p>Patient Registration & Care Management</p>
        </div>
        
        <form action="addPatient" method="post" class="form-body">
            <div class="form-row">
                <div class="form-group">
                    <label for="patientName">Patient Name</label>
                    <input type="text" id="patientName" name="patientName" required placeholder="Enter full name">
                </div>
                
                <div class="form-group">
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" required placeholder="Enter age" min="0" max="120">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                        <option value="Prefer not to say">Prefer not to say</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="admissionDate">Admission Date</label>
                    <input type="date" id="admissionDate" name="admissionDate" required>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="ailment">Ailment</label>
                    <input type="text" id="ailment" name="ailment" required placeholder="Diagnosis or condition">
                </div>
                
                <div class="form-group">
                    <label for="assignedDoctor">Assigned Doctor</label>
                    <input type="text" id="assignedDoctor" name="assignedDoctor" required placeholder="Doctor's name">
                </div>
            </div>
            
            <button type="submit" class="btn-submit">
                <i class="fas fa-user-plus"></i> Add Patient
            </button>
        </form>
        
        <div class="form-footer">
            <a href="displayPatients" class="btn-back">
                <i class="fas fa-arrow-left"></i> View All Patients
            </a>
        </div>
    </div>
</body>
</html>