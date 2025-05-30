<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients by Ailment</title>
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

        .search-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .input-group {
            display: flex;
            flex-direction: column;
        }

        .input-label {
            font-weight: 500;
            margin-bottom: 0.5rem;
            color: #475569;
        }

        .search-input {
            padding: 0.75rem 1rem;
            border: 2px solid #e2e8f0;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.2s ease;
        }

        .search-input:focus {
            outline: none;
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search-input::placeholder {
            color: #94a3b8;
        }

        .search-button {
            padding: 0.875rem 2rem;
            background-color: #3b82f6;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s ease;
            align-self: center;
        }

        .search-button:hover {
            background-color: #2563eb;
        }

        .search-button:active {
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

            .search-button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Find Patients by Ailment</h2>
        
        <form action="reportByAilment" method="get" class="search-form">
            <div class="input-group">
                <label class="input-label" for="ailment">Ailment:</label>
                <input type="text" id="ailment" name="ailment" class="search-input" placeholder="Enter ailment to search..." required />
            </div>
            <input type="submit" value="Search" class="search-button" />
        </form>
    </div>
</body>
</html>