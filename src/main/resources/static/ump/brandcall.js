UserWebApp.controller('BrandCall', function ($scope, HttpService) {
  $scope.params = {};
  $scope.listBrandcall = [];
  $scope.params.pages = 1 ;
  $scope.totalItem = 0 ;

  $scope.listOptions = [
      {"index": "1.1", "key": "khoa_the", "text" : "Khóa Thẻ"},
      {"index": "2.1", "key": "dvt_kich_hoat_the", "text" : "DVT - Kích Hoạt Thẻ"},
      {"index": "2.2", "key": "dvt_cap_pin_the", "text" : "DVT - Cấp Pin Thẻ"},
      {"index": "2.3", "key": "dvt_cac_dich_vu_the_khac", "text" : "DVT - Các Dịch Vụ Thẻ Khác"},
      {"index": "3.1", "key": "DVNHS_khach_hang_ca_nhan", "text" : "DVNHS - Khách Hàng Cá Nhân"},
      {"index": "3.2", "key": "DVNHS_khach_hang", "text" : "DVNHS - Khách Hàng"},
      {"index": "4", "key": "thanh_toan", "text" : "Thanh Toán"},
      {"index": "5.1", "key": "DVTGKHCN_tai_khoan_thanh_toan", "text" : "DVTGKHCN - Tài Khoản Thanh Toán"},
      {"index": "5.2", "key": "DVTGKHCN_tai_khoan_tiet_kiem", "text" : "DVTGKHCN - Tài Khoản Tiết Kiệm"},
      {"index": "5.3", "key": "DVTGKHCN_chuyen_tien", "text" : "DVTGKHCN - Chuyển Tiền"},
      {"index": "5.4", "key": "DVTGKHCN_dich_vu_khac", "text" : "DVTGKHCN - Dịch Vụ Khác"},
      {"index": "6", "key": "KHCN_dich_vu_tien_vay", "text" : "KHCN - Dịch Vụ tiền vay"},
      {"index": "7.1", "key": "KHCN_tai_khoan_tien_gui", "text" : "KHDN - Tài Khoản Tiền Gửi"},
      {"index": "7.2", "key": "KHCN_tai_khoan_tien_vay", "text" : "KHDN - Tài Khoản Tiền Vay"},
      {"index": "7.3", "key": "KHCN_dich_vu_khac", "text" : "KHDN - Dịch Vụ Khác"},
      {"index": "8", "key": "kenh_phuc_vu_tu_dong", "text" : "Kênh Dịch Vụ Tự Động"},
      {"index": "9", "key": "english", "text" : "English"},
      {"index": "0", "key": "khong_tuong_tac", "text" : "Không tương tác"}
  ];
  $scope.modalOption = $scope.listOptions[0];

  var token = common.getCookie("token");


  if(token==""||token==null){
    location.replace('/');
  }

  ///
  function getData() {
    HttpService.getData('/api/brandcall/all', $scope.params).then(function (response) {
      $scope.listBrandcall = response;
      HttpService.getData('/api/brandcall/total', {}).then(function (response) {
        $scope.totalItem = response
      });
    });
  }
  ///
  getData();
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
  ///
  $scope.brandAddorEdit = '';
  $scope.modalId = 0;
  $scope.modalValue = '';
  $scope.modalDescription = '';

  $scope.onAddNew = function () {
    $scope.brandAddorEdit = "ADD NEW BRANDCALL";
    ///
    $('.modalEdit').modal('show');
  }

  $scope.onModalDelete = function (id,value) {
    $scope.modalId = id;
    $scope.modalValue = value;
    ///
    $('.modalDelete').modal('show');
  }

  $scope.onDelete = function () {
    $scope.pushParams = [];
    $scope.pushParams.id = $scope.modalId;
    HttpService.getData('/api/brandcall/delete', $scope.pushParams).then(function (response) {
      common.notifySuccess("Delete Success !")
      $('.modalDelete').modal('hide');
      getData();
    });
  }
  ///
  $scope.onModalConfirm = function () {
    $scope.modalOption = JSON.parse($scope.modalOption);
    if($scope.brandAddorEdit == "ADD NEW BRANDCALL"){
      $scope.pushParams = [];
      $scope.pushParams.brandAddorEdit =  $scope.brandAddorEdit;
      $scope.pushParams.modalValue =  $scope.modalOption.text;
      $scope.pushParams.modalDescription =  $scope.modalDescription;
      $scope.pushParams.modalKey =  $scope.modalOption.key;
      console.log($scope.pushParams);
      console.log($scope.modalOption);

      HttpService.getData('/api/brandcall/createNew', $scope.pushParams).then(function (response) {
        if(response==200){
          common.notifySuccess("Add New Success !")
          $('.modalEdit').modal('hide');
          $scope.brandAddorEdit = '';
          $scope.modalId = 0;
          $scope.modalValue = '';
          $scope.modalDescription = '';
          getData();
        }else if (response==203) {
          common.notifyError("Brandcall Already Exit !")
        }
      });
    }else{
      $scope.pushParams = [];
      $scope.pushParams.modalId = $scope.modalId;
      $scope.pushParams.modalValue = $scope.modalValue;
      $scope.pushParams.modalDescription = $scope.modalDescription;

      HttpService.getData('/api/brandcall/update', $scope.pushParams).then(function (response) {
        if(response==200){
          common.notifySuccess("Update Success !")
          $('.modalEdit').modal('hide');
          getData();

          $scope.brandAddorEdit = '';
          $scope.modalId = 0;
          $scope.modalValue = '';
          $scope.modalDescription = '';
        }
      });
    }
  }
  ///

  ///
  $scope.onEdit = function (id,showValue,description) {
    $scope.brandAddorEdit = 'EDIT BRANDCALL';
    $scope.modalId = id;
    $scope.modalValue = showValue;
    $scope.modalDescription = description;
    ///
    $('.modalEdit').modal('show');
  }
  ///

});