UserWebApp
    .service('HttpService', function ($http, $q) {
      var token = common.getCookie("token")

      var self = {
        'getData': function (url, param) {
          common.spinner(true);
          var deferred = $q.defer();

          $http({
            method: 'GET',
            url: url,
            params: param,
            headers: {'Authorization': token}
          }).then(function successCallback(response) {
            if (response.status === 200) {
              deferred.resolve(response.data);
              common.spinner(false);

            } else {
              deferred.reject();
              common.spinner(false);
              common.notifyError(response.data.error, response.status);
            }

          }, function errorCallback(response) {
            deferred.reject();
            common.spinner(false);
            if (response.status === 405) {
              common.notifyError('Error', '403');
            } else {
              common.notifyError(response.data.error, response.status);
            }
          });

          return deferred.promise;
        },

        'postData': function (url, param, _btnElement) {
          var deferred = $q.defer();
          if (typeof _btnElement !== 'undefined') {
            common.btnLoading(_btnElement, true);
          }

          $http({
            method: 'POST',
            url: url,
            data: param,
            headers: {'Authorization': token}
          }).then(function successCallback(response) {
            if (response.status === 200) {
              deferred.resolve(response.data);
            } else {
              deferred.reject();
              common.notifyError(response.data.error, response.status);
            }
            if (typeof _btnElement !== 'undefined') {
              common.btnLoading(_btnElement, false);
            }

          }, function errorCallback(response) {
            deferred.reject();
            if (response.status === 405) {
              common.notifyError('Error', '403');
            } else {
              common.notifyError(response.data.error, response.status);
            }
            if (typeof _btnElement !== 'undefined') {
              common.btnLoading(_btnElement, false);
            }
          });

          return deferred.promise;
        },

        'postDataWithFile': function (url, param, file) {
          var deferred = $q.defer();

          // Create object
          var formData = new FormData();
          formData.append('file', file);
          angular.forEach(param, function (value, key) {
            formData.append(key, value);
          });

          var dataSending  = {headers: { 'Content-Type': undefined }};

          $http.post(url, formData, dataSending).then(function successCallback(response) {
            if (response.status === 200) {
              deferred.resolve(response.data);

            } else {
              deferred.reject();
              common.notifyError(response.data.error, response.status);
            }

          }, function errorCallback(response) {
            deferred.reject();
            common.notifyError(response.data.error, response.status);
          });

          return deferred.promise;
        },

        'putData': function (url, param) {
          var deferred = $q.defer();

          $http({
            method: 'PUT',
            url: url,
            data: param,
            headers: {'Authorization': token}
          }).then(function successCallback(response) {
            if (response.status === 200) {
              deferred.resolve(response.data);

            } else {
              deferred.reject();
              common.notifyError(response.data.error, response.status);
            }

          }, function errorCallback(response) {
            deferred.reject();
            if (response.status === 405) {
              common.notifyError('Error', '403');
            } else {
              common.notifyError(response.data.error, response.status);
            }
          });

          return deferred.promise;
        },

        'deleteData': function (url, param) {
          var deferred = $q.defer();

          $http({
            method: 'DELETE',
            url: url,
            data: param,
            headers: {'Authorization': token}
          }).then(function successCallback(response) {
            if (response.status === 200) {
              deferred.resolve(response.data);

            } else {
              deferred.reject();
              common.notifyError(response.data.error, response.status);
            }

          }, function errorCallback(response) {
            deferred.reject();
            if (response.status === 405) {
              common.notifyError('Error', '403');
            } else {
              common.notifyError(response.data.error, response.status);
            }
          });

          return deferred.promise;
        },



      };

      return self;
    })

    .service('WebSocketService', function ($q) {
      var self = {
        'watchUrl': function (url) {
          var deferred = $q.defer();
          var isDone = false;

          var socket = new SockJS(constants.WEB_SOCKET_URL);
          var stompClient = Stomp.over(socket);
          stompClient.connect({}, function (frame) {
            stompClient.subscribe(url, function (response) {
              // Done
              var data = JSON.parse(response.body);
              deferred.resolve(data);
              isDone = true;
            });
            deferred.notify();
          });

          // Check timeout
          setTimeout(function(){
            if (!isDone) {
              stompClient.disconnect();
              deferred.reject();
              common.notifyWarning('Timeout');
            }
          }, constants.WEB_SOCKET_TIMEOUT);

          return deferred.promise;
        },
        'watchTask': function (_taskId) {
          var deferred = $q.defer();
          var isDone = false;

          var socket = new SockJS(constants.WEB_SOCKET_URL);
          var stompClient = Stomp.over(socket);
          stompClient.connect({}, function (frame) {
            stompClient.subscribe('/topic/task/' + _taskId, function (response) {
              // Done
              var data = JSON.parse(response.body);
              deferred.resolve(data.taskId);
              isDone = true;
            });
          });

          // Check timeout
          setTimeout(function(){
            if (!isDone) {
              stompClient.disconnect();
              deferred.reject();
              common.notifyWarning('Timeout');
            }
          }, constants.WEB_SOCKET_TIMEOUT);

          return deferred.promise;
        }
      };

      return self;
    });