// function ProfileInfo() {
//     var customer_id = document.getElementById('customer_id').value;
//     window.location.href = 'originalprofile.php?customer_id=' + customer_id;
// }

function toggleSidePanel() {
    var panel = document.getElementById("sidepanel");
    var tglbtn = document.getElementById("toggle-btn");
    // Check if the side panel is already open
    if (panel.style.left === "0px") {
        // It's open, so close it by moving it out of view
        panel.style.left = "-250px"; // Adjust "-250px" based on your side panel's width
        tglbtn.style.left = "0px";
    } else {
        // It's closed, so open it by moving it into view
        panel.style.left = "0px";
        tglbtn.style.left = "200px"; 
    }
    
}


function fetchCustomerInfo() {
    var customer_id = document.getElementById('customer_id').value;
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'fetch_customer_info.php?action=dashboard_info', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('customer-details').innerHTML = xhr.responseText;
        }
    };
    xhr.send('customer_id=' + customer_id);
}



document.addEventListener("DOMContentLoaded", function() {
    const navItems = document.querySelector('.scrollBar');
    const scrollLeftBtn = document.querySelector('.scroll-btn.left');
    const scrollRightBtn = document.querySelector('.scroll-btn.right');
  
    scrollLeftBtn.addEventListener('click', function() {
      navItems.scrollBy({
        left: -100,
        behavior: 'smooth'
      });
    });
  
    scrollRightBtn.addEventListener('click', function() {
      navItems.scrollBy({
        left: 100,
        behavior: 'smooth'
      });
    });
  });

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

function fetchCallHistory(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("customer-history").innerHTML = this.responseText;
        }
    };
    xhr.open("GET", "FetchCallHistory.php", true);
    xhr.send();
}

  
