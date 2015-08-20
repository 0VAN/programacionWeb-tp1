/**
 * Created by ALEX on 8/14/2015.
 */

angular
    .module('storeApp', [
        'ngResource',
        'ngRoute']
)
    .controller('listSalesController', listSalesController);

function listSalesController() {


    var vm = this;
    vm.listConfig = {
        columns: [
            {name: 'Numero', property: 'numero', visible: true, sortable: false, searchable: true},
            {name: 'Monto total', property: 'monto_total', visible: true, sortable: true, searchable: true},
            {name: 'Nombre del cliente', property: 'nombre_cliente', visible: true, sortable: true, searchable: true},
            {name: 'RUC del cliente', property: 'ruc_cliente', visible: true, sortable: true, searchable: true},
            {name: 'Fecha', property: 'fecha', visible: true, sortable: true, searchable: true}
        ],
        URL: 'http://pweb-demo-api.herokuapp.com/api/v1/ventas',
        globalSearch: true,
        title: 'Lista de ventas',
        detailViewTitle: 'Vista detalle de venta'
    };
    //
    //storeServices.salesServices.get(function (data) {
    //    $scope.salesList = data.ventas;
    //    $scope.salesMeta = data.meta;
    //
    //    $scope.checkNumberUp = function () {
    //
    //        if ($scope.page != parseInt($scope.salesMeta.total_pages)) {
    //            return true;
    //        }
    //
    //    };
    //
    //    $scope.globalSearch = '';
    //
    //    $scope.column1.searchable == true ? $scope.column1['searchBox'] = '' : '';
    //    $scope.column2.searchable == true ? $scope.column2['searchBox'] = '' : '';
    //    $scope.column3.searchable == true ? $scope.column3['searchBox'] = '' : '';
    //    $scope.column4.searchable == true ? $scope.column4['searchBox'] = '' : '';
    //    $scope.column5.searchable == true ? $scope.column5['searchBox'] = '' : '';
    //
    //    $scope.column1.sortable == true ? $scope.column1['sortValue'] = 'asc' : '';
    //    $scope.column2.sortable == true ? $scope.column2['sortValue'] = 'asc' : '';
    //    $scope.column3.sortable == true ? $scope.column3['sortValue'] = 'asc' : '';
    //    $scope.column4.sortable == true ? $scope.column4['sortValue'] = 'asc' : '';
    //    $scope.column5.sortable == true ? $scope.column5['sortValue'] = 'asc' : '';
    //
    //    var params = {};
    //    $scope.applyFiltering = function () {
    //
    //        if ($scope.column1.searchBox != '') {
    //            params.by_numero = $scope.searchByNumero;
    //        }
    //        if ($scope.column2.searchBox != '') {
    //            params.by_monto_total = $scope.searchByMontoTotal;
    //        }
    //        if ($scope.column3.searchBox != '') {
    //            params.by_nombre_cliente = $scope.searchByNombreCliente;
    //        }
    //        if ($scope.column4.searchBox != '') {
    //            params.by_ruc_cliente = $scope.searchByRucCliente;
    //        }
    //        if ($scope.column5.searchBox != '') {
    //            params.by_fecha = $scope.searchByFecha;
    //        }
    //
    //        //storeServices.testURL.get(params);
    //    };
    //
    //    $scope.applySorting = function () {
    //
    //        if ($scope.column1.sortValue == 'asc') {
    //            params.numero = 'asc';
    //            return;
    //        }
    //        else if ($scope.column1.sortValue == 'desc') {
    //            params.numero = 'desc';
    //            return;
    //        }
    //        if ($scope.column2.sortValue == 'asc') {
    //            params.numero = 'asc';
    //            return;
    //        }
    //        else if ($scope.column2.sortValue == 'desc') {
    //            params.numero = 'desc';
    //            return;
    //        }
    //        if ($scope.column3.sortValue == 'asc') {
    //            params.numero = 'asc';
    //            return;
    //        }
    //        else if ($scope.column3.sortValue == 'desc') {
    //            params.numero = 'desc';
    //            return;
    //        }
    //        if ($scope.column4.sortValue == 'asc') {
    //            params.numero = 'asc';
    //            return;
    //        }
    //        else if ($scope.column4.sortValue == 'desc') {
    //            params.numero = 'desc';
    //            return;
    //        }
    //        if ($scope.column5.sortValue == 'asc') {
    //            params.numero = 'asc';
    //            return;
    //        }
    //        else if ($scope.column5.sortValue == 'desc') {
    //            params.numero = 'desc';
    //            return;
    //        }
    //
    //
    //        //storeServices.testURL.get(params);
    //    };
    //
    //
    //});
    //
    //
    //var params = {};
    //params.page = $scope.page;
    //params.numero = 'asc';
    //
    ////variables for filtering
    //$scope.searchByNumero = '';
    //$scope.searchByMontoTotal = '';
    //$scope.searchByNombreCliente = '';
    //$scope.searchByRucCliente = '';
    //$scope.searchByFecha = '';
    //
    ////variables for sorting icons
    //$scope.showAscendingIcon = true;
    //$scope.showDescendingIcon = false;
    //
    //
    ////variables for pagination and sorting
    //$scope.page = 1;
    ////$scope.numero = 'asc';
    ////$scope.monto_total = '';
    ////$scope.nombre_cliente = '';
    ////$scope.ruc_cliente = '';
    ////$scope.fecha = '';
    //$scope.selectedColumn = 1;
    //
    //
    //$scope.saleDetails = '';
    //
    //$scope.applySorting = function (columnNumber) {
    //    $scope.showAscendingIcon = !$scope.showAscendingIcon;
    //    $scope.showDescendingIcon = !$scope.showDescendingIcon;
    //
    //    params = {};
    //    params.page = $scope.page;
    //
    //    var sortValue = $scope.showAscendingIcon == true ? 'asc' : 'desc';
    //    $scope.selectedColumn = columnNumber;
    //
    //    if ($scope.selectedColumn == 1)
    //        params.numero = sortValue;
    //    else if ($scope.selectedColumn == 2)
    //        params.monto_total = sortValue;
    //    else if ($scope.selectedColumn == 3)
    //        params.nombre_cliente = sortValue;
    //    else if ($scope.selectedColumn == 4)
    //        params.ruc_cliente = sortValue;
    //    else if ($scope.selectedColumn == 5)
    //        params.fecha = sortValue;
    //
    //    storeServices.testURL.get(params);
    //
    //};
    //
    //
    //$scope.displaySalesInformation = function (sale) {
    //    $scope.saleDetails = sale;
    //    $('.ui.modal')
    //        .modal('show')
    //    ;
    //};
    //
    //$scope.goBackPage = function () {
    //
    //
    //    $scope.page -= 1;
    //
    //};
    //
    //$scope.goNextPage = function () {
    //    $scope.page += 1;
    //};
    //
    //$scope.checkNumberDown = function () {
    //
    //    if ($scope.page != 1) {
    //        return true;
    //    }
    //
    //};
    //

}