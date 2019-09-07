function loadDetail(pid) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("includedContent").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "phpAction/proDetailAction.php?id="+pid, true);
    xhttp.send();   
}