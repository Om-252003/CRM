<!-- fetch_bgl_review.php -->
<?php
// Connect to the database
require_once "./Database/dbConnection.php";

// Fetch data from BGL_Review table
$sql = "SELECT * FROM BGL_Review";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<p>Sr No: " . $row["Sr_No"] . ", Customer ID: " . $row["customer_id"] . ", Date: " . $row["Date"] . ", Note / Remark: " . $row["Note_Remark"] . ", Total BGL Amount: " . $row["Total_BGL_Amount"] . ", Total Paid Amount: " . $row["Total_Paid_Amount"] . ", Pay Amount: " . $row["Pay_Amount"] . ", Unpaid Amount: " . $row["Unpaid_Amount"] . ", Total Unpaid Amount: " . $row["Total_Unpaid_Amount"] . "</p>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>
