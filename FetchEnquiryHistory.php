<?php

require_once "./Database/dbConnection.php";


        $sql = "SELECT * FROM Enquiry_History";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            
            echo "<table class='enquiry-table'>";
            echo "<tr><th>Sr No.</th><th>Customer ID</th><th>Date & Time</th><th>Call</th><th>Type</th><th>Sub-Type</th><th>Query</th><th>Feedback</th><th>Resolution</th><th>Resolution Status</th><th>Remark</th></tr>";
            
            
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["Sr_No"] . "</td>";
                echo "<td>" . $row["customer_id"] . "</td>";
                echo "<td>" . $row["Tag_Date_Time"] . "</td>";
                echo "<td>" . $row["Call_Type"] . "</td>";
                echo "<td>" . $row["Type"] . "</td>";
                echo "<td>" . $row["Sub_Type"] . "</td>";
                echo "<td>" . $row["Query"] . "</td>";
                echo "<td>" . $row["Feedback"] . "</td>";
                echo "<td>" . $row["Resolution"] . "</td>";
                echo "<td>" . $row["Resolution_Status"] . "</td>";
                echo "<td>" . $row["Remark"] . "</td>";
                echo "</tr>";
            }
            
            echo "</table>";
           
        } else {
            echo "0 results";
        }
   
    
    $stmt->close();



?>
