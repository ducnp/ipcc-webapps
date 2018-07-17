UserWebApp.controller('Cdr', function ($scope, HttpService,$timeout) {
    $scope.params = {};
    $scope.listBrandcall = [];
    $scope.params.pages = 1;
    $scope.totalItem = 0;
    ///
    $scope.listSurvey = [];
    $scope.listBirthday = [];
    ///
    var token = common.getCookie("token");

    if(token==""||token==null){
        location.replace('/');
    }
    ///
    $scope.changeFile = function () {
        console.log('LOL')
    }

    $scope.onImport = function () {
        if(validate()){
            var form = $('#formdataimport')[0];
            var data = new FormData(form);
            var url = '/api/upload-file';
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: url,
                headers: {
                    "Authorization": token
                },
                data: data,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 60000,
                success: function (response) {
                    common.notifySuccess('Preview File Success');
                    window.location = '/api/result';
                },
                async: false
                ,
                error: function (e) {
                    common.notifySuccess('Preview File Error');
                }
            })

        }
    }



    function validate(){
            var lengthFile = $("#file")[0].files.length;
            if(lengthFile==0){
                common.notifyError('You Must Choose File !');
                return false;
            }else{
                return true;
            }
    }






});
