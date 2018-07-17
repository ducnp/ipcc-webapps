UserWebApp.controller('NavBarController', function ($scope, HttpService,$window,$timeout) {
    $scope.isMailVip = common.getCookie("isMailVip");
    $scope.init = function () {
        $scope.isMailVip = common.getCookie("isMailVip");
        console.log("$scope.isMailVip: " + $scope.isMailVip);
    }
});