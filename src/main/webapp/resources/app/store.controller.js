/**
 * Created by alex on 19/08/15.
 */
angular
    .module('storeApp')
    .controller('listController', listController);

function listController($scope, storeServices) {

    var params = {};
    $scope.dataList = [];
    $scope.meta = {};
    $scope.page = 1;
    $scope.searchBoxes = [];

    storeServices.salesServices($scope.config.URL).get(function (serverResponse) {
        $scope.dataList = serverResponse.ventas;
        $scope.dataMeta = serverResponse.meta;


        $scope.applyFilter = function (searchValue, column) {
            if (searchValue != '') {
                params['by_' + column] = searchValue;
            }
            else {
                delete params['by_' + column];
            }
        };

        //Pagination methods
        $scope.checkNumberUp = function () {

            if ($scope.page != parseInt($scope.dataMeta.total_pages)) {
                return true;
            }

        };
        $scope.goBackPage = function () {


            $scope.page -= 1;

        };

        $scope.goNextPage = function () {
            $scope.page += 1;
        };

        $scope.checkNumberDown = function () {

            if ($scope.page != 1) {
                return true;
            }

        };
        //Pagination methods

    });


    //storeServices.salesServices.get({url:url},function (data) {
    //
    //})
}