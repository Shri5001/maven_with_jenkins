<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      background-color: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 24px;
      color: #333;
    }

    p {
      text-align: center;
      color: #666;
      font-size: 14px;
    }

    hr {
      border: 0;
      height: 1px;
      background-color: #eee;
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      margin-bottom: 10px;
      display: block;
      color: #333;
    }

    input[type="text"], input[type="password"], input[type="email"] {
      width: 100%;
      padding: 10px;
      margin: 8px 0 16px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
      border-color: #007bff;
      outline: none;
    }

    .registerbtn {
      width: 100%;
      background-color: #007bff;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    .registerbtn:hover {
      background-color: #0056b3;
    }

    .signin {
      text-align: center;
      margin-top: 20px;
    }

    .signin a {
      color: #007bff;
      text-decoration: none;
    }

    .signin a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <form action="action_page.php">
    <div class="container">
      <h1>Register for DevOps + AWS Training 2024</h1>
      <p>Fill in this form to create an account.</p>
      <hr>

      <label for="Name"><b>Full Name</b></label>
      <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

      <label for="mobile"><b>Mobile Number</b></label>
      <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

      <label for="email"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="email" id="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

      <p>By creating an account, you agree to our <a href="#">Terms & Privacy</a>.</p>
      <button type="submit" class="registerbtn">Register</button>
    </div>

    <div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>
  </form>

  <script>
    // Example for password confirmation validation
    const form = document.querySelector('form');
    form.addEventListener('submit', function(event) {
      const password = document.getElementById('psw').value;
      const confirmPassword = document.getElementById('psw-repeat').value;

      if (password !== confirmPassword) {
        alert("Passwords do not match!");
        event.preventDefault();
      }
    });
  </script>

</body>
</html>
