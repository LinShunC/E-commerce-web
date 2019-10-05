function loadDescription(catId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("description").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getContent.php?q="+catId, true);
    xhttp.send();   
}

function loadDetail(catId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("description").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getDetail.php?q="+catId, true);
    xhttp.send();   
}


function loadPrice(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("price").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getPrice.php?q="+pId, true);
    xhttp.send();   
}
 
function loadImage(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("ImageBox").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getImage.php?q="+pId, true);
    xhttp.send();   
}

function loadRelated(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("Related").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getRelated.php?q="+pId, true);
    xhttp.send();   
}

 function loadProductName(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("ProductName").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getProductName.php?q="+pId, true);
    xhttp.send();   
}

function loadHighlights(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("highlights").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/getHighlights.php?q="+pId, true);
    xhttp.send();   
}

function loadBreadCrums(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("breadcrumb").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/breadcrumProAction.php?id="+pId, true);
    xhttp.send();   
}
   
function addCart(pId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          
             if(this.responseText="Success") 
             {
                 alert("Add to cart successfully");
             }
            else
            {
                 alert("error");
            }
        }
    };
    xhttp.open("GET", "phpAction/AddToCart.php?q="+pId, true);
    xhttp.send();   
}
function loadCart(test) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("content").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/DisplayCart.php?q="+test, true);
    xhttp.send();   
}
