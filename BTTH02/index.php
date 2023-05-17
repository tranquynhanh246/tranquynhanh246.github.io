<!DOCTYPE html>
<html>
<head>
    <title> LOGIN </title>
</head>
<body>
    <h2> LOGIN </h2>
    <form action="login.php" method="POST">
        <label for="student_id"> Student ID: </label>
        <input type="text" id="student_id" name="student_id" required>
        <br>
        <br>

        <label for="password"> Password :</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
