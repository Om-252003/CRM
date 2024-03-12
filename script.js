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

// function fetchCallHistory(){
//     var CH = 'CH';
//     var customer_id = document.getElementById('customer_id').value;
//     var xhr = new XMLHttpRequest();
//     xhr.open('POST', 'fetch_customer_info.php?action=fetchCallHistory', true);
    
//     xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
//     xhr.onreadystatechange = function() {
//         if (xhr.readyState == 4 && xhr.status == 200) {
//             document.getElementById('customer-details').innerHTML = xhr.responseText;
//         }
//     };
//     xhr.send('customer_id=' + customer_id);
    // xhr.send('customer_id=' + encodeURIComponent(customer_id)+'CH='+encodeURIComponent(CH));


//}

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
  
