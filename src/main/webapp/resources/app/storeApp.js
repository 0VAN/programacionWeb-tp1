/**
 * Created by ALEX on 8/14/2015.
 */

angular
    .module('storeApp', [
        'ngResource',
        'ngRoute']
)
    .controller('listSalesController', listSalesController);

function listSalesController($scope, storeServices) {

    //Data for testing
    //var data = {
    //    employees: [
    //        {firstName: 'John', lastName: 'Doe', CI: '123'},
    //        {firstName: 'Anna', lastName: 'Smith', CI: '456'},
    //        {firstName: 'Peter', lastName: 'Jones', CI: '789'}
    //    ]
    //};

    $scope.globalSearch='';
    $scope.searchByName='';
    $scope.searchByCI='';
    $scope.searchByLastName='';
    $scope.salesList = storeServices.salesServices.query();
    $scope.saleDetails = '';

    $scope.displaySalesInformation = function (sale) {
        $scope.saleDetails = sale;
        $('.ui.modal')
            .modal('show')
        ;
    }

}