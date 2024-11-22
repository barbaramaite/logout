<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <!-- Enlace a la CDN de Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">

<div class="card shadow-sm" style="width: 100%; max-width: 400px;">
  <div class="card-body">
    <h2 class="card-title text-center mb-4">Login</h2>
    <form  action="/sesiones/loginservlet" method="POST">
      <div class="mb-3">
        <label for="username" class="form-label">Username</label>
        <input type="text" id="username" name="username" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" id="password" name="password" class="form-control" required>
      </div>
      <button type="submit" class="btn btn-primary w-100">Login</button>
      <div  class="text-danger mt-3" style="display: none;">Invalid username or password.</div>
    </form>
  </div>
</div>

<!-- Scripts de Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission for demonstration

    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Simple validation for demo purposes
    if (username === "user" && password === "password") {
      alert("Login successful!");
      // Redirect to another page or show content
    } else {
      document.getElementById("errorMessage").style.display = "block";
    }
  });
</script>

</body>
</html>
