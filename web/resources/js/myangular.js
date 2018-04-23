var app = angular.module("simpleApp", []);

app.controller("simpleCtrl", function ($scope, $http) {


    $scope.simples = [];
    $scope.simpleForm = {
        id: -1,
        name: "",
        dob: "",
        email: "",
        password:"",
        address:"",
        gender:"",
        contact:"",
        city:"",
        course:""
    };

    _refreshSimpleData();

    $scope.submitSimple = function () {

        var method = "";
        var url = "";
        if ($scope.simpleForm.id == -1) {
            method = "POST";
            url = 'service/simple';
        } else {

            method = "PUT";
            url = 'service/simple/up/' + $scope.simpleForm.id;
        }

        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.simpleForm),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(_success, _error);
    };

    //HTTP DELETE- delete Message by Id
    $scope.deleteSimple = function (simple) {
        $http({
            method: 'DELETE',
            url: 'service/simple/del/' + simple.id
        }).then(_success, _error);
    };

    $scope.editSimple = function (simple) {
        $scope.simpleForm.id = simple.id,
                $scope.simpleForm.name = simple.name,
                $scope.simpleForm.dob = simple.dob,
                $scope.simpleForm.email = simple.email,
                $scope.simpleForm.password=simple.password,
                $scope.simpleForm.address=simple.address,
                $scope.simpleForm.gender=simple.gender,
                $scope.simpleForm.contact=simple.contact,
                $scope.simpleForm.city=simple.city,
                $scope.simpleForm.course=simple.course
    };

    function _refreshSimpleData() {
        $http({
            method: 'GET',
            url: 'http://localhost:8080/AngularJSFinalProject/service/simple'
        }).then(function successCallback(response) {
            $scope.simples = response.data;
            console.log(response.data);
        }, function errorCallback(response) {
            console.log(response.statusText);
        });
    }

    function _success(response) {
        _refreshSimpleData();
        _clearFormData()
    }

    function _error(response) {
        console.log(response.statusText);
    }


    function _clearFormData() {
        $scope.simpleForm.id = -1,
        $scope.simpleForm.name = "",
        $scope.simpleForm.dob = "",
        $scope.simpleForm.email = "",
        $scope.simpleForm.password = "",
        $scope.simpleForm.address = "",
        $scope.simpleForm.gender = "",
        $scope.simpleForm.contact = "",
        $scope.simpleForm.city = "",
        $scope.simpleForm.course = ""
    };

});