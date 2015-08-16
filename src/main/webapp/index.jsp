<html data-ng-app="storeApp">

<link rel="stylesheet" type="text/css" href="resources/static/css/table.css">
<link rel="stylesheet" type="text/css" href="resources/static/css/semantic.css">

<script type="application/javascript" src="resources/static/js/jquery-2.1.4.min.js"></script>
<script type="application/javascript" src="resources/static/js/angular.js"></script>
<script type="application/javascript" src="resources/static/js/angular-resource.js"></script>
<script type="application/javascript" src="resources/static/js/angular-route.js"></script>
<script type="application/javascript" src="resources/static/js/semantic.js"></script>

<script type="application/javascript" src="resources/app/storeApp.js"></script>
<script type="application/javascript" src="resources/app/store.services.js"></script>
<script type="application/javascript" src="resources/app/store.filters.js"></script>


<body data-ng-controller="listSalesController">
<div class="ui divider"></div>

<div class="ui fluid category search" id="global-search">
    <div class="ui icon input">
        <input class="prompt" type="text" placeholder="Search..." data-ng-model="globalSearch"
               data-ng-change="applyFilter()">
        <i class="search icon"></i>
    </div>
    <div class="results"></div>
</div>
<div class="ui divider"></div>

<div class="ui centered grid">
    <div class="twelve wide column">
        <table class="ui selectable celled table">
            <thead>
            <tr>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Numero..." data-ng-model="searchByNumero"
                                   data-ng-change="applyFilter()">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>

                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Monto Total..."
                                   data-ng-model="searchByMontoTotal" data-ng-change="applyFilter()">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Nombre del Cliente..."
                                   data-ng-model="searchByNombreCliente" data-ng-change="applyFilter()">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="RUC del Cliente..."
                                   data-ng-model="searchByRucCliente" data-ng-change="applyFilter()">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Fecha..." data-ng-model="searchByFecha"
                                   data-ng-change="applyFilter()">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr data-ng-model="salesList"
                data-ng-repeat="sale in salesList"
                data-ng-click="displaySalesInformation(sale)">
                <td>{{sale.numero}}</td>
                <td>{{sale.monto_total}}</td>
                <td>{{sale.nombre_cliente}}</td>
                <td>{{sale.ruc_cliente}}</td>
                <td>{{sale.fecha}}</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <th colspan="5">
                    <div class="ui right floated pagination menu">
                        <a class="icon item">
                            <i class="left arrow icon"></i>
                        </a>
                        <a class="active item">
                            1
                        </a>

                        <div class="disabled item">
                            ...
                        </div>
                        <a class="item">
                            10
                        </a>
                        <a class="item">
                            11
                        </a>
                        <a class="item">
                            12
                        </a>
                        <a class="icon item">
                            <i class="right arrow icon"></i>
                        </a>
                    </div>
                </th>
            </tr>

            </tfoot>
        </table>
    </div>

    <div class="ui modal">
        <i class="close icon"></i>

        <div class="header">
            Detalles de Venta
        </div>
        <div class="content">
            <div class="description">
                <table class="ui striped table">
                    <tr>
                        <td> Nombre </td>
                        <td> {{saleDetails.numero}} </td>
                    </tr>
                    <tr>
                        <td> Monto Total </td>
                        <td> {{saleDetails.monto_total}} </td>
                    </tr>
                    <tr>
                        <td> Cliente </td>
                        <td> {{saleDetails.nombre_cliente}} </td>
                    </tr>
                    <tr>
                        <td> RUC </td>
                        <td> {{saleDetails.ruc_cliente}} </td>
                    </tr>
                    <tr>
                        <td> Fecha de Venta </td>
                        <td> {{saleDetails.fecha}} </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>