<!DOCTYPE html>
<html>

<head>
    <title>Tag Enquiry</title>
</head>

<body>
    <h2>Tag Enquiry</h2>

    <form action="" method="POST">

    
        <label for="customer_id">Customer ID:</label><br>
        <input type="text" id="customer_id" name="customer_id"><br>

        <label for="tag_date_time">Tag Date & Time:</label><br>
        <input type="datetime-local" id="tag_date_time" name="tag_date_time"><br>

        <label for="call_type">Call (Inbound / Outbound):</label><br>
        <select id="call_type" name="call_type">
            <option value="inbound">Inbound</option>
            <option value="outbound">Outbound</option>
        </select><br>

        <label for="type">Type:</label><br>
        <input type="text" id="type" name="type"><br>

        <label for="sub_type">Sub-Type:</label><br>
        <input type="text" id="sub_type" name="sub_type"><br>

        <label for="query">Query:</label><br>
        <textarea id="query" name="query"></textarea><br>

        <label for="resolution">Resolution:</label><br>
        <textarea id="resolution" name="resolution"></textarea><br>

        <label for="feedback">Feedback:</label><br>
        <input type="text" id="feedback" name="feedback"><br>

        <label for="resolution_status">Resolution Status:</label><br>
        <select id="resolution_status" name="resolution_status">
            <option value="resolved">Resolved</option>
            <option value="unresolved">Unresolved</option>
        </select><br>

        <label for="remark">Remark:</label><br>
        <textarea id="remark" name="remark"></textarea><br><br>

        <input type="submit" value="Submit">
    </form>

    <?php
    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "crm";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["customer_id"])) 
        $customer_id = $_POST["customer_id"]; {
        // Prepare and bind the SQL statement
        $stmt = $conn->prepare("INSERT INTO Tag_Enquiry (mob_no, tag_date_time, call_type, type, sub_type, query, resolution, feedback, resolution_status, remark) VALUES (?,?,?,?,?,?,?,?,?,?)");

        // Set parameters and execute
        $tag_date_time = $_POST['tag_date_time'];
        $call_type = $_POST['call_type'];
        $type = $_POST['type'];
        $sub_type = $_POST['sub_type'];
        $query = $_POST['query'];
        $resolution = $_POST['resolution'];
        $feedback = $_POST['feedback'];
        $resolution_status = $_POST['resolution_status'];
        $remark = $_POST['remark'];

        $stmt->bind_param("isssssssss", $customer_id, $tag_date_time, $call_type, $type, $sub_type, $query, $resolution, $feedback, $resolution_status, $remark);

        if ($stmt->execute() && $stmt->affected_rows > 0) {
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
