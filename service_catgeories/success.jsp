<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Successful</title>
    <style>
        body {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("seccess.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 2rem 0 rgba(136, 152, 170, 0.15);
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            color: #f44336;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        #bk {
            text-align: center;
            font-size: 18px;
            margin-top: 20px;
            color: #333;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        a {
            text-decoration: none;
            color: #f44336;
            font-weight: 400;
            display: block;
            text-align: center;
            margin-top: 20px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #d32f2f;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Booking Successful</h2>
        <p>Your booking has been successfully processed. Thank you!
        </p>
        <p id="bk">Your Booking ID: <b><%= request.getAttribute("bookingId") %></b></p>
            <p>  Save Your Booking Id </p>
        <a href="../uindex.html">Go to Home Page</a>
    </div>
    <script type="text/javascript">
        window.onload = function () {
            var bookingId = '<%= request.getAttribute("bookingId") %>';
            document.getElementById('bk').innerHTML = 'Your Booking Id : ' + bookingId;

            if (bookingId) {
                // Display success message with booking ID
                alert("Booking successful! Your Booking ID is: " + bookingId);
            }
        };
    </script>
</body>

</html>
