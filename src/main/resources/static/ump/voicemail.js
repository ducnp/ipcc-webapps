UserWebApp.controller('VoiceMail', function ($scope, HttpService, $window) {
    ///iF DON"T HAVE TOKEN THEN REDIRECT
    $scope.params = {};
    $scope.checklistSearch = {};
    $scope.totalElements = 0;
    $scope.params.pages = 1;
    $scope.listLog = [];
    ///
    $scope.totalItem = 0;
    $scope.totalPage = 1;
    ///
    $scope.currentAudio = 'No File Choose !';
    $scope.currentId = 0;
    $scope.params.sort = "DESC";

    $scope.listReportDataTotal = 0;

    var token = common.getCookie("token")
    var user = common.getCookie("username")



    $scope.onGo = function () {
        if ($scope.params.pageToGo < 1) {
            common.notifyError("Page must larger than 0");
        }else if($scope.params.pageToGo > $scope.totalPage){
            common.notifyError("Page must less than total page");
        }else {
            $scope.params.pages = $scope.params.pageToGo;
            getData();
        }
    }

    $scope.onChangeSort = function () {
        if ($scope.params.sort == "DESC") {
            $scope.params.sort = "ASC"
        } else if ($scope.params.sort == "ASC") {
            $scope.params.sort = "DESC"
        }
    }

    $scope.getSound = function (pathFileRecord, id) {
        HttpService.getData('/api/voicemail/gethost', {}).then(function (response) {
            var host = response.host;
            $scope.currentAudio = host + pathFileRecord;
            //$scope.currentAudio = "http://www.brainybetty.com/FacebookFans/Feb112010/cello.wav" ;
            document.getElementById("myAudio").load();
        })
        $scope.currentId = id;
    }

    if (token == "" || token == null) {
        location.replace('/');
    }

    ///
    function getData() {
        HttpService.getData('/api/voicemail/all', $scope.params).then(function (response) {
            $scope.listLog = response;
            HttpService.getData('/api/voicemail/total', {}).then(function (response) {
                $scope.totalItem = response
                if ($scope.totalItem % 10 > 0) {
                    $scope.totalPage = Math.floor($scope.totalItem / 10) + 1;
                } else {
                    $scope.totalPage = $scope.totalItem / 10;
                }
                if ($scope.totalPage == 0) {
                    $scope.totalPage = 1;
                }

                if ($scope.listLog.length > 0) {
                    $scope.getSound($scope.listLog[0].pathFileRecord);
                    $scope.currentId = $scope.listLog[0].id;
                }
            });
        });
    }

    ///
    $scope.onReports = function () {
        $('.modalReport').modal('show');

    }

    $scope.onReportsViews = function () {
        if ($scope.params.fromDateReport == null || $scope.params.fromDateReport == '') {
            common.notifyError("You must choose from date report !")
        } else if ($scope.params.toDateReport == null || $scope.params.toDateReport == '') {
            common.notifyError("You must choose to date report !")
        } else if (moment($scope.params.fromDateReport) > moment($scope.params.toDateReport)) {
            common.notifyError("To date must larger than from date !")
        }
        else {
            HttpService.getData('/api/voicemail/viewReportModal', $scope.params).then(function (response) {
                $scope.listReportData = response;
                console.log(response);
                if ($scope.listReportData.length <= 0) {
                    common.notifyWarning("No Data To View")
                } else {
                    HttpService.getData('/api/voicemail/viewReportModalTotal', $scope.params).then(function (response) {
                        $scope.listReportDataTotal = response.totalAgentViewDone;
                    });
                }
            });
        }
    }

    $scope.onReportsConfirm = function () {
        if ($scope.params.fromDateReport == null || $scope.params.fromDateReport == '') {
            common.notifyError("You must choose from date report !")
        } else if ($scope.params.toDateReport == null || $scope.params.toDateReport == '') {
            common.notifyError("You must choose to date report !")
        } else if (moment($scope.params.fromDateReport) > moment($scope.params.toDateReport)) {
            common.notifyError("To date must larger than from date !")
        }
        else {
            HttpService.getData('/api/voicemail/reportModal', $scope.params).then(function (response) {
                console.log(response);
            });
            var oExportData = [];
            $.ajax({
                contentType: 'application/ms-excel',
                data: JSON.stringify(oExportData),
                success: function () {
                    window.location = '/api/voicemail/report'
                },
                error: function () {
                    console.log("Export failed");
                },
                type: 'POST',
                url: '/api/voicemail/export',
                headers: {
                    "Authorization": token
                }
            });
        }


    }
    ///
    $scope.idEdit = 0;
    $scope.noteEdit = '';

    $scope.onEditNoteConfirm = function () {

        $scope.editParams = [];
        $scope.editParams.agentEmail = user;
        $scope.editParams.id = $scope.idEdit;
        $scope.editParams.noteEdit = $scope.noteEdit;

        HttpService.getData('/api/voicemail/updateAgentNote', $scope.editParams).then(function (response) {
            if (response == 200) {
                common.notifySuccess("Edit Note Success !")
                $('.modalEdit').modal('hide');
                getData();
            }
        });
    }

    $scope.onEditNote = function (id, noteEdit) {
        $scope.idEdit = id;
        $scope.noteEdit = noteEdit;
        $scope.agentEmail = user;
        $('.modalEdit').modal('show');
    }

    $scope.onChangeStatus = function (id, status, agentEmail) {
        $scope.editParams = [];
        $scope.editParams.id = id;
        $scope.editParams.status = status;
        $scope.editParams.agentEmail = agentEmail;
        $scope.editParams.currentUser = user;

        HttpService.getData('/api/voicemail/updateNote', $scope.editParams).then(function (response) {
            if (response == 200) {
                common.notifySuccess("Edit Success !")
                getData();
            } else if (response == 400) {
                common.notifyError("You Can't Update This Status . It's belong to another Agent !")
                getData();
            }
        });

    }

    $scope.onEditSeen = function (id, seen) {
        $scope.editParams = [];
        $scope.editParams.id = id;
        $scope.editParams.status = seen;
        $scope.editParams.agentEmail = user;

        HttpService.getData('/api/voicemail/updateNote', $scope.editParams).then(function (response) {
            if (response == 200) {
                common.notifySuccess("Edit Seen Success !")
                getData();
            }
        });
    }
    ///
    getData()
    ///
    $scope.onPrev = function () {
        if ($scope.params.pages > 1) {
            $scope.params.pages = $scope.params.pages - 1;
            getData();
        }
    }
    ///
    $scope.onExportExcel = function () {
        var oExportData = [];
        $.ajax({
            contentType: 'application/ms-excel',
            data: JSON.stringify(oExportData),
            success: function () {
                window.location = '/api/voicemail/result'
            },
            error: function () {
                console.log("Export failed");
            },
            type: 'POST',
            url: '/api/voicemail/export',
            headers: {
                "Authorization": token
            }
        });
    }
    ///

    $scope.onDownload = function (pathFileRecord) {
        HttpService.getData('/api/voicemail/gethost', {}).then(function (response) {
            var host = response.host;
            $window.open(host + pathFileRecord, '_blank');
        })
    }


    ///
    $scope.onNext = function () {
        if ($scope.totalItem / 10 >= $scope.params.pages) {
            $scope.params.pages = $scope.params.pages + 1;
            getData();
        }
    }
    ///
    $scope.onClearAll = function () {
        $scope.params.customerName = "";
        $scope.params.customerType = "";
        $scope.params.customerPhone = "";
        $scope.params.dateRecord = "";
        $scope.params.fromDate = "";
        $scope.params.toDate = "";
    }
    ///
    $scope.onSearch = function () {
        getData()
    }


    getBrandCall();

    function getBrandCall() {
        HttpService.getData('/api/brandcall/searchForSelect', {}).then(function (response) {
            $scope.brandcalls = response;
        });
    }
})
