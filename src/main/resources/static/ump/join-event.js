UserWebApp.controller('JoinEvent', function ($scope, HttpService,$window,$timeout) {
    $scope.params = {};
    $scope.checklistSearch = {};
    $scope.totalElements = 0;
    $scope.params.pages = 1 ;
    $scope.listLog = [];
    $scope.totalItem = 0 ;
    $scope.totalPage = 1;
    $scope.currentId = 0;

    $scope.listData = [];

    var token = common.getCookie("token");
    var user = common.getCookie("username");

    $scope.onImportExcel = function () {
        document.getElementById("fileEvent").click();
        document.getElementById('fileEvent').onchange = function() {
            // fire the upload here
            var file = document.getElementById("fileEvent").files[0];
            if(angular.isDefined(file) && file.name.endsWith(".xlsx")){
                var formData = new FormData();
                formData.append('file', file);
                var url = '/api/join-event/upload-file';
                $.ajax({
                    type: "POST",
                    enctype: 'multipart/form-data',
                    url: url,
                    headers: {
                        "Authorization": token
                    },
                    data: formData,
                    processData: false,
                    contentType: false,
                    cache: false,
                    timeout: 60000,
                    success: function (response) {
                        common.notifySuccess('Upload File: ' + file.name + ' success!');
                        $timeout(function () {
                            window.location.reload();
                        }, 300);
                    },
                    async: false
                    ,
                    error: function (e) {
                        common.notifyError('Preview File Error', 'Error');
                    }
                })
            }else{
                common.notifyError('Required select File *.xlsx', 'Error');
            }
        };
    }

    $scope.init = function () {
        getData();
    }

    function getData() {
        HttpService.getData('/api/join-event/search', $scope.params).then(function (response) {
            $scope.listData = response;
            HttpService.getData('/api/join-event/total', {}).then(function (response) {
                $scope.totalItem = response;
                if ($scope.totalItem % 10 > 0) {
                    $scope.totalPage = Math.floor($scope.totalItem / 10) + 1;
                } else {
                    $scope.totalPage = $scope.totalItem / 10;
                }
                if($scope.totalPage==0){
                    $scope.totalPage = 1;
                }
                if($scope.listLog.length > 0){
                    $scope.getSound($scope.listLog[0].pathFileRecord);
                    $scope.currentId = $scope.listLog[0].id;
                }
            });
        });
    }

    ///
    $scope.onNext = function () {
        console.log($scope.totalItem/10)
        console.log($scope.params.pages)
        console.log($scope.totalItem/10 >= $scope.params.pages);
        if($scope.totalItem/10 >= $scope.params.pages){
            $scope.params.pages = $scope.params.pages + 1;
            getData();
        }
    }
    ///
    $scope.onPrev = function () {
        if($scope.params.pages > 1){
            $scope.params.pages = $scope.params.pages - 1;
            getData();
        }
    }
    ///
    $scope.onExportExcel =function () {
        window.location = '/api/join-event/export';
    }
    ///
    $scope.getSound = function (pathFileRecord, id) {
        HttpService.getData('/api/join-event/get-config-audio', {}).then(function(response){
            var host = response.host;
            $scope.currentAudio = host + pathFileRecord;
            //$scope.currentAudio = "http://www.brainybetty.com/FacebookFans/Feb112010/cello.wav" ;
            document.getElementById("myAudio2").load();
        })
        $scope.currentId = id;
    }
    ///
    $scope.startCall = function (id) {
        var param = {id: id};
        HttpService.getData('/api/join-event/start-call', param).then(function () {
            common.notifySuccess('Start Call Successfully!');
            $timeout(function () {
                window.location.reload();
            }, 500);
        });
    }
    ///
    $scope.onDownload = function (pathFileRecord) {
        HttpService.getData('/api/join-event/get-config-audio', {}).then(function(response){
            var host = response.host;
            $window.open(host + pathFileRecord, '_blank');
            //$window.open("http://www.brainybetty.com/FacebookFans/Feb112010/cello.wav", '_blank');
        })
    }
    ///
    $scope.stopCall = function () {
        HttpService.getData('/api/join-event/stop-call').then(function () {
            common.notifySuccess('Stop Call Successfully!');
            $timeout(function () {
                window.location.reload();
            }, 500);
        });
    }
});