/**
 * Created by ALEX on 8/14/2015.
 */

angular
    .module('storeApp', ['ngResource', 'ngRoute'])
    .controller('listProductsController', listProductsController);

function listProductsController($scope, storeServices) {

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
    $scope.productsList = storeServices.productsServices.query();
    $scope.productDetails = '';

    $scope.displayProductInformation = function (product) {
        $scope.productDetails = product;
        $('.ui.modal')
            .modal('show')
        ;
    }

}