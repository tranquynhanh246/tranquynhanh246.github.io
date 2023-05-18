<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý điểm danh</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <h1>Quản lý điểm danh</h1>

        <form>
            <div class="mb-3">
                <label for="course">Khóa học</label>
                <select class="form-select" id="course">
                    <option selected disabled>Chọn khóa học</option>
                    <option value="course1">Khóa học 1</option>
                    <option value="course2">Khóa học 2</option>
                    <option value="course3">Khóa học 3</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="date">Ngày điểm danh</label>
                <input type="date" class="form-control" id="date">
            </div>

            <div class="mb-3">
                <label for="attendance">Điểm danh</label>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="attendance1">
                    <label class="form-check-label" for="attendance1">
                        Sinh viên 1
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="attendance2">
                    <label class="form-check-label" for="attendance2">
                        Sinh viên 2
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="attendance3">
                    <label class="form-check-label" for="attendance3">
                        Sinh viên 3
                    </label>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Lưu</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>