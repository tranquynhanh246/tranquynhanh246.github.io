<?php include_once 'Student.php';
$filename = "./assets/text/student.txt";
$f = fopen($filename, "r");
$content = fread($f, filesize($filename));
$remove = "\n";
$arraySt = explode($remove, $content);
?>
<?php
class StudentDAO
{
    private $studentArray = [];

    public function createStudent($id, $name, $age)
    {
        $newST = new Student($id, $name, $age);
        array_push($studentArray, $newST);
    }

    public function getAll()
    {
        global $arraySt;
        for ($i = 1; $i < count($arraySt); $i++) {
            $infor = explode(",", $arraySt[$i]);
            array_push($this->studentArray, new Student($infor[0], $infor[1], $infor[2]));
        }
        return $this->studentArray;
    }

    public function updateStudent()
    {
    }
}
?>