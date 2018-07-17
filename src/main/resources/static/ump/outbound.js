UserWebApp.controller('Outbound', function ($scope, HttpService, $timeout) {
    //
    $scope.modalContactInfoType = 1;
    $scope.modalRecordType = 2;
    $scope.modalRecordStatus = 1;
    $scope.modalCallResult = 28;
    $scope.modalAttempt = 0;
    $scope.modalDailyFrom = 28800;
    $scope.modalDailyTill = 72000;
    $scope.modalTzBbid = 111;
    //----------
    $scope.modalContactInfoTypeTemp = $scope.modalContactInfoType;
    $scope.modalRecordTypeTemp = $scope.modalRecordType;
    $scope.modalRecordStatusTemp = $scope.modalRecordStatus;
    $scope.modalCallResultTemp = $scope.modalCallResult;
    $scope.modalAttemptTemp = $scope.modalAttempt;
    $scope.modalDailyFromTemp = $scope.modalDailyFrom;
    $scope.modalDailyTillTemp = $scope.modalDailyTill;
    $scope.modalTzBbidTemp = $scope.modalTzBbid;
    //
    $scope.params = {};
    $scope.params.table = '';
    $scope.listBrandcall = [];
    $scope.params.pages = 1;
    //
    $scope.totalItem = 0;
    $scope.totalPage = 1;
    ///
    $scope.listHistory = [];
    $scope.listSurvey = [];
    $scope.listBirthday = [];
    $scope.onChangeData = 0;
    ///
    $scope.campaignNameOther = [];
    $scope.otherData = [];
    $scope.headerData = [];
    $scope.campaignName = "";
    var token = common.getCookie("token");

    getCampaignOther();

    $scope.removeDate = "";
    $scope.removeFile  = "";

    $scope.onShowDelete = function (removeDate, removeFile) {
        $scope.removeDate = removeDate;
        $scope.removeFile = removeFile;
        $('.modalDelete').modal('show');
    }

    $scope.onRemove = function (removeDate, removeFile) {
        $scope.editParams = [];
        $scope.editParams.removeTable = $scope.params.table;
        $scope.editParams.removeDate = removeDate;
        $scope.editParams.removeFile = removeFile;

        HttpService.getData('/api/outbound/removeFile', $scope.editParams).then(function (response) {
            var result = response.result;
            if (result == 'OK') {
                common.notifySuccess("DELETE FILE SUCCESS !");
                getData();
                getCampaignOther();
            } else {
                common.notifyError("CAMPAIGN IS ALLREADY RUNNING , CAN'T DELETE");
            }
            $('.modalDelete').modal('hide');
        });
    }


    $scope.onModalResetParamsConfirm = function () {
        $scope.modalContactInfoType = 1;
        $scope.modalRecordType = 2;
        $scope.modalRecordStatus = 1;
        $scope.modalCallResult = 28;
        $scope.modalAttempt = 0;
        $scope.modalDailyFrom = 28800;
        $scope.modalDailyTill = 72000;
        $scope.modalTzBbid = 111;
    }

    $scope.onCancelParamsConfirm = function () {
        $scope.modalContactInfoType = $scope.modalContactInfoTypeTemp;
        $scope.modalRecordType = $scope.modalRecordTypeTemp;
        $scope.modalRecordStatus = $scope.modalRecordStatusTemp;
        $scope.modalCallResult = $scope.modalCallResultTemp;
        $scope.modalAttempt = $scope.modalAttemptTemp;
        $scope.modalDailyFrom = $scope.modalDailyFromTemp;
        $scope.modalDailyTill = $scope.modalDailyTillTemp;
        $scope.modalTzBbid = $scope.modalTzBbidTemp;
    }

    $scope.onModalEditParamsConfirm = function () {
        if ($scope.modalContactInfoType.length == 0 || $scope.modalContactInfoType == null) {
            common.notifyError("Contact Info Type must input");
        }
        else if ($scope.modalRecordType.length == 0 || $scope.modalRecordType == null) {
            common.notifyError("Record Type must input");
        }
        else if ($scope.modalRecordStatus.length == 0 || $scope.modalRecordStatus == null) {
            common.notifyError("Record Status must input");
        }
        else if ($scope.modalCallResult.length == 0 || $scope.modalCallResult == null) {
            common.notifyError("Call Result must input");
        }
        else if ($scope.modalAttempt.length == 0 || $scope.modalAttempt == null) {
            common.notifyError("Attempt must input");
        }
        else if ($scope.modalDailyFrom.length == 0 || $scope.modalDailyFrom == null) {
            common.notifyError("Daily From must input");
        }
        else if ($scope.modalDailyTill.length == 0 || $scope.modalDailyTill == null) {
            common.notifyError("Daily Till must input");
        }
        else if ($scope.modalTzBbid.length == 0 || $scope.modalTzBbid == null) {
            common.notifyError("Tz Bbid must input");
        } else {
            $scope.editParams = [];
            $scope.editParams.modalContactInfoType = $scope.modalContactInfoType;
            $scope.editParams.modalRecordType = $scope.modalRecordType;
            $scope.editParams.modalRecordStatus = $scope.modalRecordStatus;
            $scope.editParams.modalCallResult = $scope.modalCallResult;
            $scope.editParams.modalAttempt = $scope.modalAttempt;
            $scope.editParams.modalDailyFrom = $scope.modalDailyFrom;
            $scope.editParams.modalDailyTill = $scope.modalDailyTill;
            $scope.editParams.modalTzBbid = $scope.modalTzBbid;

            HttpService.getData('/api/outbound/changeDefaultParams', $scope.editParams).then(function (response) {
                common.notifySuccess("Update Params Success");
                $('.modalParams').modal('hide');
            });
        }
    }

    $scope.onOpenDefaultParams = function () {
        $('.modalParams').modal('show');

        $scope.modalContactInfoTypeTemp = $scope.modalContactInfoType;
        $scope.modalRecordTypeTemp = $scope.modalRecordType;
        $scope.modalRecordStatusTemp = $scope.modalRecordStatus;
        $scope.modalCallResultTemp = $scope.modalCallResult;
        $scope.modalAttemptTemp = $scope.modalAttempt;
        $scope.modalDailyFromTemp = $scope.modalDailyFrom;
        $scope.modalDailyTillTemp = $scope.modalDailyTill;
        $scope.modalTzBbidTemp = $scope.modalTzBbid;
    }

    function getCampaignOther() {
        HttpService.getData('/api/outbound/getCampaignOther', {}).then(function (response) {
            $scope.campaignNameOther = response;
        });
    }

    $scope.onChangeCampain = function () {
        $scope.onChangeData = 0;
        //
        $scope.totalItem = 0;
        $scope.totalPage = 1;
        $scope.listHistory = [];
        getData();
        //
    }

    $scope.onChangeFile = function () {
        $scope.onChangeData = 0;
    }




    if (token == "" || token == null) {
        location.replace('/');
    }
    ///
    $scope.onGetImportForm = function () {
        if ($scope.params.table == null) {
            common.notifyError('You Must Choose Campain !');
        } else {
            if ($scope.params.table == 'birthday') {
                HttpService.getData('/api/outbound/formBirthday', {}).then(function (response) {
                    var url = response.url;
                    window.location = url;
                    common.notifySuccess('Export Form Data Birthday Success !');
                });
            } else if ($scope.params.table == 'survey') {
                HttpService.getData('/api/outbound/formSurvey', {}).then(function (response) {
                    var url = response.url;
                    window.location = url;
                    common.notifySuccess('Export Form Data Survey Success !');
                });
            } else if ($scope.params.table == 'other') {
                HttpService.getData('/api/outbound/formOther', {}).then(function (response) {
                    var url = response.url;
                    window.location = url;
                    common.notifySuccess('Export Form Data Other Success !');
                });
            }
        }
    }
    ///
    $scope.onExport = function () {
        if ($scope.params.table == null) {
            common.notifyError('You Must Choose Campain !');
        } else {
            if ($scope.params.table == 'birthday') {
                var oExportData = [];
                $.ajax({
                    contentType: 'application/ms-excel',
                    data: JSON.stringify(oExportData),
                    success: function () {
                        window.location = '/api/outbound/exportBirthday'
                        common.notifySuccess("Export Success")
                    },
                    error: function () {
                        common.notifyError("Export failed");
                    }
                });
            } else if ($scope.params.table == 'survey') {
                var oExportData = [];
                $.ajax({
                    contentType: 'application/ms-excel',
                    data: JSON.stringify(oExportData),
                    success: function () {
                        window.location = '/api/outbound/exportSurvey'
                        common.notifySuccess("Export Success")
                    },
                    error: function () {
                        common.notifyError("Export failed");
                    }
                });
            } else if ($scope.params.table == 'other') {
                common.notifyError("You can't Export Other !")
            } else {
                HttpService.getData('/api/outbound/getCampaignNameExport', $scope.params).then(function (response) {
                    var oExportData = [];
                    $.ajax({
                        contentType: 'application/ms-excel',
                        data: JSON.stringify(oExportData),
                        success: function () {
                            window.location = '/api/outbound/exportOther'
                            common.notifySuccess("Export Success")
                        },
                        error: function () {
                            common.notifyError("Export failed");
                        }
                    });
                });
            }
        }
    }
    ///
    $scope.onImport = function () {
        if ($scope.onChangeData == 0) {
            common.notifyError("You have to preview file first !");
        } else {
            /////
            $scope.editParams = [];
            $scope.editParams.modalContactInfoType = $scope.modalContactInfoType;
            $scope.editParams.modalRecordType = $scope.modalRecordType;
            $scope.editParams.modalRecordStatus = $scope.modalRecordStatus;
            $scope.editParams.modalCallResult = $scope.modalCallResult;
            $scope.editParams.modalAttempt = $scope.modalAttempt;
            $scope.editParams.modalDailyFrom = $scope.modalDailyFrom;
            $scope.editParams.modalDailyTill = $scope.modalDailyTill;
            $scope.editParams.modalTzBbid = $scope.modalTzBbid;

            HttpService.getData('/api/outbound/changeDefaultParams', $scope.editParams).then(function (response) {
                common.notifySuccess("Update Params Success");
                $('.modalParams').modal('hide');
            });
            /////
            HttpService.getData('/api/outbound/checkOkImport', {}).then(function (response) {
                $scope.checkOkImport = response.checkOkImport;
                if ($scope.checkOkImport == "NO") {
                    common.notifyError("You file is error you have to fix the file first ! check column status on review !");
                } else {
                    if ($scope.params.table == 'birthday') {
                        HttpService.getData('/api/outbound/importBirthday', {}).then(function (response) {
                            common.notifySuccess('Import Data Birthday Success !');
                            alert(response.total);
                            resetFile();
                            getData();
                        });
                    } else if ($scope.params.table == 'survey') {
                        HttpService.getData('/api/outbound/importSurvey', {}).then(function (response) {
                            common.notifySuccess('Import Data Survey Success !');
                            alert(response.total);
                            resetFile();
                            getData();
                        });
                    } else {
                        HttpService.getData('/api/outbound/importOther', {}).then(function (response) {
                            common.notifySuccess('Import Data Success !');
                            alert(response.total);
                            resetFile();
                            getData();
                            getCampaignOther();
                        });
                    }
                }
            });
        }
    }

    function resetFile() {
        var $input = $("#file");
        $input.replaceWith($input.val('').clone(true));
    }

    ///
    $scope.onReview = function () {
        if (validate()) {
            $scope.listSurvey = [];
            $scope.listBirthday = [];
            ///
            ///
            var form = $('#formdataimport')[0];
            var data = new FormData(form);
            var url = '';
            if ($scope.params.table == 'birthday') {
                url = '/api/outbound/reviewBirthday';
            } else if ($scope.params.table == 'survey') {
                url = '/api/outbound/reviewSurvey';
            } else if ($scope.params.table == 'other') {
                url = '/api/outbound/reviewOther';
            }
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
                    if (response != null) {
                        common.notifySuccess('Preview File Success');
                        //
                        if ($scope.params.table == 'survey') {
                            $scope.listSurvey = response;
                        } else if ($scope.params.table == 'birthday') {
                            $scope.listBirthday = response;
                        } else {
                            //handle other
                            $scope.otherData = response;
                            HttpService.getData('/api/outbound/viewHeader', {}).then(function (response) {
                                $scope.headerData = response;
                                HttpService.getData('/api/outbound/campaignName', {}).then(function (response) {
                                    $scope.campaignName = response.campaignName;

                                });
                            });
                        }
                        //
                        if ($scope.params.table == 'survey') {
                            $('.modalSurvey').modal('show');
                        } else if ($scope.params.table == 'birthday') {
                            $('.modalBirthday').modal('show');
                        } else {
                            $('.modalOther').modal('show');
                        }
                        ///
                        $scope.onChangeData = 1;
                        ///
                    }
                },
                async: false
                ,
                error: function (e) {
                    common.notifySuccess('Preview File Error');
                }
            })
        }
    }

    ///
    $scope.params.enableButtonReview = true;
    $scope.params.enableButtonImport = true;
    $scope.params.enableButtonExport = true;
    $scope.params.enableButtonImportForm = true;

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

    ///
    function getData() {
        if ($scope.params.table != 'other') {
            HttpService.getData('/api/outbound/getHistory', $scope.params).then(function (response) {
                $scope.listHistory = response;
                HttpService.getData('/api/outbound/total', {}).then(function (response) {
                    $scope.totalItem = response
                    if ($scope.totalItem % 10 > 0) {
                        $scope.totalPage = Math.floor($scope.totalItem / 10) + 1
                    } else {
                        $scope.totalPage = $scope.totalItem / 10
                    }


                });
            });
            $scope.params.enableButtonExport = false;
        } else {
            $scope.params.enableButtonExport = true;
        }

        if ($scope.params.table == 'other' || $scope.params.table == 'birthday' || $scope.params.table == 'survey') {
            $scope.params.enableButtonReview = false;
            $scope.params.enableButtonImport = false;
            $scope.params.enableButtonImportForm = false;
        } else {
            $scope.params.enableButtonReview = true;
            $scope.params.enableButtonImport = true;
            $scope.params.enableButtonImportForm = true;
        }


    }

    $scope.onPrev = function () {
        if ($scope.params.pages > 1) {
            $scope.params.pages = $scope.params.pages - 1;
            getData();
        }
    }
    ///
    ///
    $scope.onNext = function () {
        if ($scope.totalItem / 10 >= $scope.params.pages) {
            $scope.params.pages = $scope.params.pages + 1;
            getData();
        }
    }

    ///

    function validate() {
        if ($scope.params.table == null) {
            common.notifyError('You Must Choose Campain !');
            return false;
        } else {
            var lengthFile = $("#file")[0].files.length;
            if (lengthFile == 0) {
                common.notifyError('You Must Choose File !');
                return false;
            } else {
                return true;
            }
        }
    }

});