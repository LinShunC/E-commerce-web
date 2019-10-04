$(function () {
    $('#form').validator();

    // when the form is submitted
    $('#form').on('submit', function (e) {

        // if the validator does not prevent form submit
        if (!e.isDefaultPrevented()) {
            
            document.getElementById("result").innerHTML = "Success";
            
           
            
            return false;
        }
    })

})














/*$(document).ready(function() {




    $("#submitBtn").click(function(){

        var name = $("#inputName").val();
        var email = $("#inputEmail").val();

        if (name.length == 0 && email.length == 0){
            document.getElementById("result").innerHTML = "Fail";
        } else {
            document.getElementById("result").innerHTML = "Success";
        }

        return false;

    });
});



/*$('#form').validator().on('submit', function (e) {
        if (e.isDefaultPrevented()) {
            // handle the invalid form...
            document.getElementById("result2").style.display = "block";


        } else {
            // everything looks good!

            // using serialize function of jQuery to get all values of form
            /*var serializedData = $("#registrationForm").serialize();

            $.post("regisAction.php",serializedData,function(data){

                document.getElementById("result").innerHTML = data;

            })


            document.getElementById("result1").style.display = "block";
        }

    })*/









