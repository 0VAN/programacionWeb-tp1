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

    var params = {};
    params.page = $scope.page;
    params.numero = 'asc';

    //variables for filtering
    $scope.globalSearch = '';
    $scope.searchByNumero = '';
    $scope.searchByMontoTotal = '';
    $scope.searchByNombreCliente = '';
    $scope.searchByRucCliente = '';
    $scope.searchByFecha = '';

    //variables for sorting icons
    $scope.showAscendingIcon = true;
    $scope.showDescendingIcon = false;


    //variables for pagination and sorting
    $scope.page = 1;
    //$scope.numero = 'asc';
    //$scope.monto_total = '';
    //$scope.nombre_cliente = '';
    //$scope.ruc_cliente = '';
    //$scope.fecha = '';
    $scope.selectedColumn = 1;

    //
    storeServices.salesServices.get(function (data) {
        $scope.salesList = data.ventas;
        $scope.salesMeta = data.meta;

    });

    $scope.saleDetails = '';

    $scope.applySorting = function (columnNumber) {
        $scope.showAscendingIcon = !$scope.showAscendingIcon;
        $scope.showDescendingIcon = !$scope.showDescendingIcon;

        params = {};
        params.page = $scope.page;

        var sortValue = $scope.showAscendingIcon == true ? 'asc' : 'desc';
        $scope.selectedColumn = columnNumber;

        if ($scope.selectedColumn == 1)
            params.numero = sortValue;
        else if ($scope.selectedColumn == 2)
            params.monto_total = sortValue;
        else if ($scope.selectedColumn == 3)
            params.nombre_cliente = sortValue;
        else if ($scope.selectedColumn == 4)
            params.ruc_cliente = sortValue;
        else if ($scope.selectedColumn == 5)
            params.fecha = sortValue;

        storeServices.testURL.get(params);

    };

    $scope.applyFiltering = function () {

        params = {};
        params.page = $scope.page;

        if ($scope.searchByNumero != '')
            params.by_numero = $scope.searchByNumero;
        if ($scope.searchByMontoTotal != '')
            params.by_monto_total = $scope.searchByMontoTotal;
        if ($scope.searchByNombreCliente != '')
            params.by_nombre_cliente = $scope.searchByNombreCliente;
        if ($scope.searchByRucCliente != '')
            params.by_ruc_cliente = $scope.searchByRucCliente;
        if ($scope.searchByFecha != '')
            params.by_fecha = $scope.searchByFecha;

        storeServices.testURL.get(params);
    };

    $scope.displaySalesInformation = function (sale) {
        $scope.saleDetails = sale;
        $('.ui.modal')
            .modal('show')
        ;
    };

    $scope.goBackPage = function() {


        $scope.page -= 1;

    };

    $scope.goNextPage = function() {
        $scope.page += 1;
    };

    $scope.checkNumberDown = function() {

        if($scope.page  != 1) {
            return true;
        }

    };

    $scope.checkNumberUp = function() {

        if($scope.page  != parseInt($scope.salesMeta.total_pages))  {
            return true;
        }

    }


}