<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tag Complaint</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h2>Tag Complaint</h2>
    <div class="form-container">
        <div class="form-section">
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

            <label for="complaint_issue">Complaint Issue:</label><br>
            <textarea id="complaint_issue" name="complaint_issue"></textarea><br>

            <label for="escalation_desk">Escalation Desk:</label><br>
            <input type="text" id="escalation_desk" name="escalation_desk"><br>
        </div>
        
        <div class="form-section">
            <label for="escalation_remark">Escalation Remark:</label><br>
            <textarea id="escalation_remark" name="escalation_remark"></textarea><br>

            <label for="resolution_tat">Resolution TAT:</label><br>
            <input type="text" id="resolution_tat" name="resolution_tat"><br>

            <label for="resolution_status">Resolution Status:</label><br>
            <select id="resolution_status" name="resolution_status">
                <option value="resolved">Resolved</option>
                <option value="unresolved">Unresolved</option>
            </select><br>

            <label for="compliant_handle">Compliant Handle:</label><br>
            <input type="text" id="compliant_handle" name="compliant_handle"><br>

            <label for="complaint_remark">Complaint Remark:</label><br>
            <textarea id="complaint_remark" name="complaint_remark"></textarea><br>
        </div>
    </div>

    <button type="submit">Submit</button>


<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "CRM";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and bind the SQL statement
$stmt = $conn->prepare("INSERT INTO tag_complaints (tag_date_time, call_type, type, sub_type, complaint_issue, escalation_desk, escalation_remark, resolution_tat, resolution_status, compliant_handle, complaint_remark) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssssss", $tag_date_time, $call_type, $type, $sub_type, $complaint_issue, $escalation_desk, $escalation_remark, $resolution_tat, $resolution_status, $compliant_handle, $complaint_remark);

// Set parameters
$tag_date_time = $_POST['tag_date_time'];
$call_type = $_POST['call_type'];
$type = $_POST['type'];
$sub_type = $_POST['sub_type'];
$complaint_issue = $_POST['complaint_issue'];
$escalation_desk = $_POST['escalation_desk'];
$escalation_remark = $_POST['escalation_remark'];
$resolution_tat = $_POST['resolution_tat'];
$resolution_status = $_POST['resolution_status'];
$compliant_handle = $_POST['compliant_handle'];
$complaint_remark = $_POST['complaint_remark'];

// Execute the statement
if ($stmt->execute()) {
    echo "New record inserted successfully";
} else {
    echo "Error: " . $stmt->error;
}

// Close statement and connection
$stmt->close();
$conn->close();
?>

</body>
</html>