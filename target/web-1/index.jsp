<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Registration Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background: #fff;
      padding: 30px 40px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 500px;
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
      color: #555;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    input[type="radio"] {
      margin-right: 5px;
    }

    .gender-options {
      margin-bottom: 15px;
    }

    .btn {
      background-color: #4CAF50;
      color: white;
      padding: 12px;
      width: 100%;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    .btn:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2>Student Registration</h2>
    <form action="#" method="post">
      <label for="fullname">Full Name</label>
      <input type="text" id="fullname" name="fullname" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" required>

      <label for="dob">Date of Birth</label>
      <input type="date" id="dob" name="dob" required>

      <label>Gender</label>
      <div class="gender-options">
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male" style="display: inline;">Male</label>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female" style="display: inline;">Female</label>
        <input type="radio" id="other" name="gender" value="other">
        <label for="other" style="display: inline;">Other</label>
      </div>

      <label for="course">Course</label>
      <select id="course" name="course" required>
        <option value="">-- Select Course --</option>
        <option value="bsc">B.Sc</option>
        <option value="bca">BCA</option>
        <option value="bcom">B.Com</option>
        <option value="ba">BA</option>
        <option value="msc">M.Sc</option>
      </select>

      <button type="submit" class="btn">Register</button>
    </form>
  </div>

</body>
</html>
