<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patients by Doctor</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background-color: #f8fafc;
            color: #334155;
            line-height: 1.6;
            padding: 2rem 1rem;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 2.5rem;
        }

        h2 {
            color: #1e293b;
            font-size: 1.75rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 2rem;
            border-bottom: 2px solid #e2e8f0;
            padding-bottom: 1rem;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: 500;
            margin-bottom: 0.5rem;
            color: #475569;
        }

        .input-wrapper {
            position: relative;
        }

        input[type="text"] {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 2px solid #e2e8f0;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.2s ease;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        input[type="text"]::placeholder {
            color: #94a3b8;
        }

        .submit-container {
            display: flex;
            justify-content: center;
        }

        input[type="submit"] {
            padding: 0.875rem 2rem;
            background-color: #3b82f6;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #2563eb;
        }

        input[type="submit"]:active {
            background-color: #1d4ed8;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            body {
                padding: 1rem;
            }

            .container {
                padding: 1.5rem;
            }

            h2 {
                font-size: 1.5rem;
            }

            input[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Find Patients Assigned to a Doctor</h2>
        <form action="reportByDoctor" method="get">
            <div class="form-group">
                <label for="doctor">Doctor Name:</label>
                <div class="input-wrapper">
                    <input type="text" name="doctor" id="doctor" placeholder="Enter doctor's full name..." required />
                </div>
            </div>
            <div class="submit-container">
                <input type="submit" value="Search" />
            </div>
        </form>
    </div>
</body>
</html>