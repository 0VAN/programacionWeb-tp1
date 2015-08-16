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

    //variables for filtering
    $scope.globalSearch='';
    $scope.searchByNumero = '';
    $scope.searchByMontoTotal = '';
    $scope.searchByNombreCliente = '';
    $scope.searchByRucCliente = '';
    $scope.searchByFecha = '';

    //variables for pagination and sorting
    $scope.page = '1';
    $scope.numero = '';
    $scope.monto_total = '';
    $scope.nombre_cliente = '';
    $scope.ruc_cliente = '';
    $scope.fecha = '';

    //
    storeServices.salesServices.get(function (data) {
        $scope.salesList = data.ventas;
        $scope.salesMeta = data.meta;

    });

    $scope.saleDetails = '';

    $scope.applyFilter = function () {

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

        if ($scope.numero != '')
            params.numero = $scope.numero;
        if ($scope.monto_total != '')
            params.monto_total = $scope.monto_total;
        if ($scope.nombre_cliente != '')
            params.nombre_cliente = $scope.nombre_cliente;
        if ($scope.ruc_cliente != '')
            params.ruc_cliente = $scope.ruc_cliente;
        if ($scope.fecha != '')
            params.fecha = $scope.fecha;

        storeServices.testURL.get(params);
    };

    $scope.displaySalesInformation = function (sale) {
        $scope.saleDetails = sale;
        $('.ui.modal')
            .modal('show')
        ;
    }

}