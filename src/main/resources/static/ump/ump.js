UserWebApp.controller('LoginController', function ($scope, HttpService) {
  $scope.params = {};

  function deleteAllCookies() {
    var cookies = document.cookie.split(";");

    for (var i = 0; i < cookies.length; i++) {
      var cookie = cookies[i];
      var eqPos = cookie.indexOf("=");
      var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
      document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
  }

  deleteAllCookies();

  $scope.onSearch = function () {
    HttpService.getData('/login/checkLogin', $scope.params).then(function(data){
      var token = data.token;
      var isMailVip = data.isMailVip;
      $scope.isMailVip = isMailVip;
      if(token == "203"){
        common.notifyError("WRONG USERNAME OR PASSWORD");
      }else{
        common.setCookie("token",token);
        common.setCookie("isMailVip",isMailVip);
        common.setCookie("username",$scope.params.username);
        location.replace('/voicemail');
      }
    });
  };


})