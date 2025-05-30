<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients by Date Range</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background-color: #f8fafc;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .main-container {
            background: white;
            border-radius: 8px;
            padding: 40px;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05), 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid #e2e8f0;
        }

        .header {
            text-align: center;
            margin-bottom: 32px;
        }

        .main-title {
            color: #1a202c;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #64748b;
            font-size: 0.875rem;
        }

        .date-range-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-bottom: 24px;
        }

        .date-field label {
            display: block;
            color: #374151;
            font-size: 0.875rem;
            font-weight: 500;
            margin-bottom: 6px;
        }

        .date-input {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            background: white;
            color: #374151;
            font-size: 0.875rem;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        .date-input:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search-button {
            width: 100%;
            padding: 12px 16px;
            border: none;
            border-radius: 6px;
            background-color: #3b82f6;
            color: white;
            font-size: 0.875rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        .search-button:hover {
            background-color: #2563eb;
        }

        .search-button:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .form-hint {
            text-align: center;
            color: #6b7280;
            font-size: 0.75rem;
            margin-top: 16px;
        }

        /* Mobile */
        @media (max-width: 640px) {
            .main-container {
                padding: 24px;
                margin: 16px;
            }

            .date-range-container {
                grid-template-columns: 1fr;
                gap: 12px;
            }

            .main-title {
                font-size: 1.25rem;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <div class="header">
            <h2 class="main-title">Patient Date Range Report</h2>
            <p class="subtitle">Filter patient admissions by date range</p>
        </div>
        
        <form action="reportByDate" method="get">
            <div class="date-range-container">
                <div class="date-field">
                    <label for="fromDate">From Date</label>
                    <input type="date" id="fromDate" name="fromDate" class="date-input" required />
                </div>
                
                <div class="date-field">
                    <label for="toDate">To Date</label>
                    <input type="date" id="toDate" name="toDate" class="date-input" required />
                </div>
            </div>
            
            <button type="submit" class="search-button">
                Generate Report
            </button>

            <div class="form-hint">
                Please select both start and end dates
            </div>
        </form>
    </div>
</body>
</html>