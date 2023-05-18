<!DOCTYPE html>
<html>
<head>
    <title> LOGIN </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2> LOGIN </h2>
        <form method="post" action="process_login.php">
            <div class="id">
                <label for="student_id" class="form-label"> Student ID: </label>
                <input type="text" class="form-control" id="student_id" name="student_id" required>
            </div>
            <div class="password">
                <label for="password" class="form-label"> Password: </label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary"> Submit </button>
        </form>
    </div>
</body>
</html>

