<!DOCTYPE html>
<html>
<head>
    <title>Tag Enquiry</title>
    <link rel="stylesheet" href="./css/tagEnquiryCss.css">
</head>
<body>
    <div class="container">
        <h2>Tag Enquiry</h2>
        <form action="" method="post">
            <div class="form-wrapper">
                <div class="form-section left-section">
                    <label for="tag_date_time">Date & Time:</label>
                    <input type="datetime-local" id="tag_date_time" name="tag_date_time">

                    <label for="call_type">Call:</label>
                    <select id="call_type" name="call_type">
                        <option value="Inbound">Inbound</option>
                        <option value="Outbound">Outbound</option>
                    </select>

                    <label for="type">Type:</label>
                    <input type="text" id="type" name="type" placeholder="ex,. Support">

                    <label for="sub_type">Sub-Type:</label>
                    <input type="text" id="sub_type" name="sub_type" placeholder="ex,. Technical">
                </div>
                <div class="form-section right-section">
                    <label for="query">Query:</label>
                    <textarea id="query" name="query"></textarea>

                    <label for="resolution">Resolution:</label>
                    <textarea id="resolution" name="resolution"></textarea>

                    <label for="feedback">Feedback:</label>
                    <input type="text" id="feedback" name="feedback">

                    <label for="resolution_status">Resolution Status:</label>
                    <select id="resolution_status" name="resolution_status">
                        <option value="resolved">Resolved</option>
                        <option value="unresolved">Unresolved</option>
                    </select>
                </div>
            </div>
            <div class="bottom-section">
                <label for="customer_id">Customer Id:</label>
                <input type="text" id="customer_id" name="customer_id">
                <label for="remark">Remark:</label>
                <textarea id="remark" name="remark"></textarea>

                <div class="button-wrapper">
                    <input type="submit" value="Submit">
                </div>
            </div>
        </form>
    </div>
    <?php
    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "CRM";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Prepare and bind the SQL statement
        $stmt = $conn->prepare("INSERT INTO Tag_Enquiry (mob_no, tag_date_time, call_type, type, sub_type, query, resolution, feedback, resolution_status, remark) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssssssss", $customer_id, $tag_date_time, $call_type, $type, $sub_type, $query, $resolution, $feedback, $resolution_status, $remark);

        // Set parameters and execute
        $customer_id = $_POST['customer_id'];
        $tag_date_time = $_POST['tag_date_time'];
        $call_type = $_POST['call_type'];
        $type = $_POST['type'];
        $sub_type = $_POST['sub_type'];
        $query = $_POST['query'];
        $resolution = $_POST['resolution'];
        $feedback = $_POST['feedback'];
        $resolution_status = $_POST['resolution_status'];
        $remark = $_POST['remark'];

        if ($stmt->execute()) {
            echo "New record inserted successfully";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
    }

    $conn->close();
    ?>
</body>
</html>
