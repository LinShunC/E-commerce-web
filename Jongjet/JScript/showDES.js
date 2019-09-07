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
 
    