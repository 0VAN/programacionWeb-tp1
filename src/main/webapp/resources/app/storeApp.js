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
    $scope.searchByNumero = '';
    $scope.searchByMontoTotal = '';
    $scope.searchByNombreCliente = '';
    $scope.searchByRucCliente = '';
    $scope.searchByFecha = '';
    $scope.salesList = storeServices.salesServices.query();
    $scope.saleDetails = '';
    $scope.applyFilter = function () {
        //console.log($scope.globalSearch+' '+$scope.searchByNumero+' '+ $scope.searchByMontoTotal+' '+$scope.searchByNombreCliente+' '+$scope.searchByRucCliente+' '+ $scope.searchByFecha);
        var params = {};
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
    }

}