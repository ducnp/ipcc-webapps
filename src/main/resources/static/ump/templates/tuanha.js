
$(document).ready(function () {
    $('.select2').select2({
        allowClear: true
    });

    $('#btnSend').click(function () {
        var inputText = document.getElementById("text").value;
        var inputNumber = document.getElementById("number").value;
        var inputDate = document.getElementById("date").value;
        var inputDatetime = document.getElementById("datetime").value;
        var inputSelect = document.getElementById("select").value;
        //
        var inputMultiSelect = document.getElementById('multiSelect');
        var values = [];
        for (var i = 0; i < inputMultiSelect.options.length; i++) {
          if (inputMultiSelect.options[i].selected) {
            values.push(inputMultiSelect.options[i].value);
          }
        }

        //
        var inputMultiSelect2 = $('#multiSelect2').val();

        var inputRadio = '';
        if (document.getElementById('inputRadio').checked) {
          inputRadio = document.getElementById('inputRadio').value;
        }

        var inputCheckbox = '';
        if (document.getElementById('inputCheckbox').checked) {
          inputCheckbox = document.getElementById('inputCheckbox').value;
        }

        //
        var inputMultiSelect2 = $('#multiSelect2').val();
        var inputFile = $('#inputFile').val();
        var inputFile = $('#inputImage').val();
        var data = '';
//        $.ajax({
//            type: 'GET',
//            url: '/quartz_management',
//            data: data,
//            success: function(response) {
//            console.log('response : '+response);
//                if(response == '200'){
//                    console.log('vao roi');
//                    location.reload();
//                } else {
//                    $('#alert_danger span.text-bold').text(response+"");
//                    $('#alert_danger').show();
//                }
//            },
//            error: function(e) {
//                if(e.status == '403'){alert(e.responseText);}
//            },
//            async: true
//        });
    });

   $("#formbody").on("submit", function (event) {
        event.preventDefault();
        var data = $(this).serialize();
        data += '&multiSelect2='+ $('#multiSelect2').val();
        data += '&multiSelect1='+ $('#multiSelect1').val();
                $.ajax({
                    type: 'GET',
                    url: '/templates/tuanhaGet',
                    data: data,
                    success: function(response) {
                    console.log('response : '+response);
                        if(response == '200'){
                            console.log('vao roi');
                            location.reload();
                        } else {
                            $('#alert_danger span.text-bold').text(response+"");
                            $('#alert_danger').show();
                        }
                    },
                    error: function(e) {
                        if(e.status == '403'){alert(e.responseText);}
                    },
                    async: true
                });
    });

});