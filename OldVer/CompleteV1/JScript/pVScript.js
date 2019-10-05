function loadCat(catId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("content").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/catSelectAction.php?id="+catId, true);
    xhttp.send();   
}


function loadAcc(accId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("content").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/accSelectAction.php?id="+accId, true);
    xhttp.send();   
}

function loadBreadCrumCat(catId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("breadcrumb").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/breadcrumCatAction.php?id="+catId, true);
    xhttp.send();   
}

function loadBreadCrumAcc(accId) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("breadcrumb").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/breadcrumAccAction.php?id="+accId, true);
    xhttp.send();   
}