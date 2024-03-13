<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type = "text/css" href= "./css/dashboardCss.css" >
    <link rel="stylesheet" type = "text/css" href= "./css/BGLReviewCss.css" >
    <link rel="stylesheet" type = "text/css" href= "./css/PenaltyReviewCss.css" >
    <link rel="stylesheet" type = "text/css" href= "./css/EnquiryHistoryCss.css" >
</head>
<body>
        <div class="navBar">
            <div class="img">
                <img src="./Images/logo.png" alt="Logo">
            </div>
            <div class="scrollmenu">
                    <a href="#">Chats</a>
                    <a href="#">Google</a>
                    <a href="#">Aadhar Portal</a>
                    <a href="#">Notepad</a>
                    <a href="#">Excel</a>
                    <a href="#">Word</a>
                    <a href="#">Meet</a>
                    <a href="#">File Manager</a>
                    <a href="#">Paint</a>
                    <a href="#">Power point</a>
                    <a href="#">Access Request</a>
                    <a href="#">Profile and Documents</a>
                    <a href="#">Application and attendence</a>
                    <a href="#">History</a>
                    <a href="#">complaint</a>
                    <a href="#">Suggestion and feedback</a>                
                    <a href="#main">Skip to Main</a>
            </div>
        </div>

    <button id = "toggle-btn" class="toggle-btn" onclick="toggleSidePanel()">&#9776;</button>

    <div class="sidepanel" id="sidepanel">
        <ul>
        <li><a href="#">  Search 🔍 </a></li>
        <li><a href="#">  Profile </a></li>
        <li><a href="#">  Calling history</a></li>
        <li><a href="#">  Complaint history </a></li>
        <li><a href="#">  Status Alert </a></li>
        <li><a href="#">  Tech support</a></li>
        <li><a href="#">  BGL Statement</a></li>
        <li><a href="#">  Penalty amount</a></li>
        <li><a href="#">  Documents</a></li>
        <li><a href="#">  Deposit amount</a></li>
        <li><a href="#">  Activation history</a></li>
        <li><a href="#">  Operator work report</a></li>
        <li><a href="#">  Enquiry</a></li>
        <li><a href="#">  Complaint</a></li>
        </ul>
    </div>
    <div class="main-content">
        <div class="flex-container">
            <div class="customer-info">
                <form id="customer-form">
                    <br>
                    <label for="customer_id">Enter Mobile no:   </label>
                    <input type="text" id="customer_id" name="customer_id" required>
                    <input type="button" id='getInfoBtn' value="Submit" onclick="fetchCustomerInfo()">
                    <input type="button" id='getProfile' value="Profile" onclick="ProfileInfo()">
                    <div id="customer-details" class="info-box"></div>
                </form>

                
            </div>
            <div id="call-dashboard" class="call-box">
                <h3>Call Dashboard</h3>
                <label for="mob_no">Mobile No:</label>
                <input type="text" id="mob_no" name="mob_no">
                <div class="operator-details">
                    <p>Operator: John Doe</p>
                    <p>Extension: 1234</p>
                </div>
                <div class="options1">
                    <button>Make Call</button>
                    <button>Hold</button>
                    <button>Conference</button>
                    <button>Release</button>
                    <br><br><br>
                </div>
                <div class="options2">
                    <button onclick="TagEnquiry()">Tag Enquiry</button>
                    <button onclick="TagComplaint()">Tag Complaint</button>
                    
                </div>
                <div class="options3">
                <button onclick="TagTechnicalResolution()">Tag Technical Resolution</button>
                </div>
            </div>
            
        </div>

        
        <div class="horizontal-list">
            <button onclick="fetchBGLReview()">BGL Review</button>
            <button onclick="fetchPenaltyReview()">Penalty Review</button>
            <button onclick="fetchEnquiryHistory()">Enquiry History</button>
            <button onclick="fetchComplaintHistory()">Complaint History</button>
            <button onclick="fetchActivationHistory()">Activation History</button>
            <button onclick="fetchWorkHistory()">Work History</button>
        </div>

        <div id="customer-history"></div>
            
        </div>
        

       
    </div>
   
    <div id="customer-history"></div>
    <script>
        function ProfileInfo() {
            var customer_id = document.getElementById('customer_id').value;
            window.location.href = 'profile.php?customer_id=' + customer_id;
        }
        function TagEnquiry() {
            var customer_id = document.getElementById('customer_id').value;
            window.location.href = 'TagEnquiry.php?customer_id=' + customer_id;
        }
        function TagComplaint() {
            var customer_id = document.getElementById('customer_id').value;
            window.location.href = 'TagComplaint.php?customer_id=' + customer_id;
        }
        function TagTechnicalResolution() {
            var customer_id = document.getElementById('customer_id').value;
            window.location.href = 'TagTechnicalResolution.php?customer_id=' + customer_id;
        }
        function fetchBGLReview() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("customer-history").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "FetchBGLReview.php", true);
        xhr.send();
        }

        function fetchPenaltyReview(){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("customer-history").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "FetchPenaltyReview.php", true);
        xhr.send();
        }
        function fetchEnquiryHistory(){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("customer-history").innerHTML = this.responseText;
            }
        };
        xhr.open("GET", "FetchEnquiryHistory.php", true);
        xhr.send();
        }

    </script>
    <script src="script.js"></script>
</body>
</html>