<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System</title>
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
        --info-color: #17a2b8;
        --warning-color: #ffc107;
        --danger-color: #dc3545;
    }
    
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }
    
    body {
        background: linear-gradient(135deg, #f5f7fa 0%, #e4e8eb 100%);
        color: var(--dark-color);
        min-height: 100vh;
        padding: 0;
        position: relative;
    }
    
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPjxkZWZzPjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiIHBhdHRlcm5UcmFuc2Zvcm09InJvdGF0ZSg0NSkiPjxyZWN0IHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgZmlsbD0icmdiYSgyNjEsMjYxLDI2MSwwLjEpIi8+PC9wYXR0ZXJuPjwvZGVmcz48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI3BhdHRlcm4pIi8+PC9zdmc+');
        opacity: 0.4;
        z-index: -1;
    }
    
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 2rem;
    }
    
    header {
        text-align: center;
        margin-bottom: 3rem;
        padding: 2rem 0;
        position: relative;
    }
    
    header::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 150px;
        height: 4px;
        background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
        border-radius: 2px;
    }
    
    h1 {
        color: var(--secondary-color);
        font-size: 2.8rem;
        font-weight: 700;
        margin-bottom: 1rem;
        text-shadow: 1px 1px 3px rgba(0,0,0,0.1);
    }
    
    .subtitle {
        color: var(--primary-color);
        font-size: 1.2rem;
        font-weight: 300;
    }
    
    .dashboard {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 2rem;
        margin-top: 2rem;
    }
    
    .card {
        background: white;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0,0,0,0.08);
        overflow: hidden;
        transition: all 0.3s ease;
        position: relative;
    }
    
    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 30px rgba(0,0,0,0.12);
    }
    
    .card-icon {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80px;
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        color: white;
        font-size: 2.5rem;
    }
    
    .card-content {
        padding: 1.5rem;
    }
    
    .card-title {
        color: var(--secondary-color);
        font-size: 1.3rem;
        font-weight: 600;
        margin-bottom: 0.5rem;
    }
    
    .card-desc {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 1.5rem;
    }
    
    .card-link {
        display: inline-block;
        padding: 0.6rem 1.2rem;
        background: var(--accent-color);
        color: white;
        text-decoration: none;
        border-radius: 50px;
        font-weight: 500;
        transition: all 0.3s ease;
        font-size: 0.9rem;
    }
    
    .card-link:hover {
        background: var(--primary-color);
        transform: translateY(-2px);
        box-shadow: 0 5px 10px rgba(0,0,0,0.1);
    }
    
    .card-link i {
        margin-left: 5px;
        transition: transform 0.3s ease;
    }
    
    .card-link:hover i {
        transform: translateX(3px);
    }
    
    footer {
        text-align: center;
        margin-top: 4rem;
        padding: 1.5rem;
        color: #666;
        font-size: 0.9rem;
    }
    
    @media (max-width: 768px) {
        h1 {
            font-size: 2.2rem;
        }
        
        .dashboard {
            grid-template-columns: 1fr;
        }
        
        .container {
            padding: 1.5rem;
        }
    }
    
    @media (max-width: 480px) {
        h1 {
            font-size: 1.8rem;
        }
        
        .subtitle {
            font-size: 1rem;
        }
        
        .card-icon {
            height: 70px;
            font-size: 2rem;
        }
    }
</style>
</head>
<body>
<div class="container">
    <header>
        <h1>Hospital Management System</h1>
        <p class="subtitle">Comprehensive Healthcare Management Solution</p>
    </header>
    
    <div class="dashboard">
        <div class="card">
            <div class="card-icon">
                <i class="fas fa-user-plus"></i>
            </div>
            <div class="card-content">
                <h3 class="card-title">Register New Patient</h3>
                <p class="card-desc">Add new patient records to the system with complete medical history</p>
                <a href="patientadd.jsp" class="card-link">Access <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
        
        <div class="card">
            <div class="card-icon">
                <i class="fas fa-users"></i>
            </div>
            <div class="card-content">
                <h3 class="card-title">View All Patients</h3>
                <p class="card-desc">Browse and manage all patient records in the system</p>
                <a href="displayPatients" class="card-link">Access <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
        
        <div class="card">
            <div class="card-icon">
                <i class="fas fa-calendar-alt"></i>
            </div>
            <div class="card-content">
                <h3 class="card-title">Date Range Report</h3>
                <p class="card-desc">Generate reports of patients admitted within specific dates</p>
                <a href="reportByDate.jsp" class="card-link">Access <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
        
        <div class="card">
            <div class="card-icon">
                <i class="fas fa-heartbeat"></i>
            </div>
            <div class="card-content">
                <h3 class="card-title">Ailment Report</h3>
                <p class="card-desc">View patients categorized by their medical conditions</p>
                <a href="reportByAilment.jsp" class="card-link">Access <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
        
        <div class="card">
            <div class="card-icon">
                <i class="fas fa-user-md"></i>
            </div>
            <div class="card-content">
                <h3 class="card-title">Doctor Assignment</h3>
                <p class="card-desc">View patients assigned to specific doctors</p>
                <a href="reportByDoctor.jsp" class="card-link">Access <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
    </div>
    
    <footer>
        &copy; 2023 Hospital Management System | Providing Quality Healthcare Solutions
    </footer>
</div>
</body>
</html>