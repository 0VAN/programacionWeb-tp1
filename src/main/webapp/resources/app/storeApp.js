/**
 * Created by ALEX on 8/14/2015.
 */

angular
    .module('storeApp', [
        'ngResource',
        'ngRoute'])
    .controller('listSalesController', listSalesController);

function listSalesController() {


    var vm = this;
    vm.listConfig = {
        columns: [
            {name: 'Numero', property: 'numero', visible: true, sortable: true, searchable: true},
            {name: 'Monto total', property: 'monto_total', visible: true, sortable: true, searchable: true},
            {name: 'Nombre del cliente', property: 'nombre_cliente', visible: false, sortable: true, searchable: true},
            {name: 'RUC del cliente', property: 'ruc_cliente', visible: true, sortable: false, searchable: true},
            {name: 'Fecha', property: 'fecha', visible: true, sortable: true, searchable: true}
        ],
        URL: 'http://pweb-demo-api.herokuapp.com/api/v1/ventas',
        globalSearch: true,
        title: 'Lista de ventas',
        detailViewTitle: 'Vista detalle de venta'
    };
}