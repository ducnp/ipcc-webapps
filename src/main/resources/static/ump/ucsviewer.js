UserWebApp.controller('UCSViewer', function ($scope, HttpService) {
  $scope.params = {};
  $scope.listUCSViewer = [];
  $scope.params.pages = 1 ;
  $scope.totalItem = 0 ;

  var token = common.getCookie("token");


  if(token==""||token==null){
    location.replace('/');
  }

  ///
    function getData() {
        HttpService.getData('/api/ucs/all', $scope.params).then(function (response) {
            $scope.listUCSViewer = response;
            HttpService.getData('/api/ucs/total', {}).then(function (response) {
                $scope.totalItem = response
                if ($scope.totalItem % 10 > 0) {
                    $scope.totalPage = Math.floor($scope.totalItem / 10) + 1;
                } else {
                    $scope.totalPage = $scope.totalItem / 10;
                }
                if($scope.totalPage==0){
                    $scope.totalPage = 1;
                }
            });
        });
    }

    $scope.onDownloadFile = function (id) {
        window.location = '/api/ucs/attachFile?id=' + id;
    }

    $scope.onExportExcel = function () {
        window.location = '/api/ucs/result'
    }

    $scope.onSearch = function () {
        getData()
    }
  ///
    $scope.init = function () {
        getData();
    }

    $scope.onShowModal = function (structuredText) {
        $scope.structText = structuredText;
        $('.modalMail').modal('show');
    }
  ///
  $scope.onPrev = function () {
    if($scope.params.pages > 1){
      $scope.params.pages = $scope.params.pages - 1;
      getData();
    }
  }
  ///
  ///
  $scope.onNext = function () {
    if($scope.totalItem/10 >= $scope.params.pages){
      $scope.params.pages = $scope.params.pages + 1;
      getData();
    }
  }

    $scope.onDetail = function (type, agentName, customerName, content, note) {
        $scope.interactionType = type;
        $scope.agentName = agentName;
        $scope.customerName = customerName;
        $scope.content = content;
        console.log(content);
        $scope.note = note;
        ///
        $('.modalDetail').modal('show');
    }

});
