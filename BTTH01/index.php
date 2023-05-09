<?php
require_once('students/StudentDAO.php');
require_once('students/Student.php');
$msg = '';
if(isset($_GET['msg'])){
    $msg = $_GET['msg'];
}
$id = '';
$age = '';
$name = '';
$studentsDao = new StudentDAO();
$studentsDao->readStudent();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    var_dump(123);
    $id = $_POST['id'];
    $name = $_POST['name'];
    $age = $_POST['age'];
    $error = $studentsDao->createStudent($id, $name, $age);
    if(!$error){
        $studentsDao->save();
        header("Location: index.php?msg=done");
    }
    else
        header('Location: index.php?msg=error');
}
$studentList = $studentsDao->getAll();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Danh sách sinh viên</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <h1>Danh sách sinh viên</h1>

    <table width="50%" border="1" cellspacing="0" cellpadding="10">
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Age</td>

        </tr>
        <?php foreach ($studentList as $item) { ?>
            <tr>
                <td><?php echo $item->getId(); ?></td>
                <td><?php echo $item->getName(); ?></td>
                <td><?php echo $item->getAge(); ?></td>
            </tr>
            
        <?php } ?>
    </table>

    <h1>Form nhập thông tin sinh viên</h1>
    <form method="POST" action="">
        <label for="id">ID:</label><br>
        <input type="text" id="name" name="id"><br>
        <label for="name">Name:</label><br>
        <input type="name" id="name" name="name"><br>
        <label for="age">Age:</label><br>
        <input type="age" id="age" name="age"><br>
        <br>
        <button type="submit">Lưu</button>
    </form>
    <p><?php
        echo ($msg ? ($msg == 'done' ? "Thêm mới thành công" : "Id đã bị trùng. Vui long nhập một Id khác") : '' );
    ?></p>
</body>

</html>