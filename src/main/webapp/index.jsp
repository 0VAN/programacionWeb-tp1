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


<body data-ng-controller="listSalesController">
<div class="ui divider"></div>

<div class="ui fluid category search" id="global-search">
    <div class="ui icon input">
        <input class="prompt" type="text" placeholder="Search..." data-ng-model="globalSearch"
               data-ng-change="applyFiltering()">
        <i class="search icon"></i>
    </div>
</div>
<div class="ui divider"></div>

<div class="ui centered grid">
    <div class="thirteen wide column">
        <table class="ui celled table">
            <thead>
            <tr>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon">
                            <div class="ui icon input">
                                <input class="prompt" type="text" placeholder="Numero..." data-ng-model="searchByNumero"
                                       data-ng-change="applyFiltering()">
                                <i class="search icon"></i>
                            </div>
                                <div data-ng-click="applySorting(1)">
                                    <div data-ng-if="selectedColumn==1">
                                        <i class="sort content ascending icon" data-ng-show="showAscendingIcon"
                                           data-ng-hide="showDescendingIcon"></i>
                                        <i class="sort content descending icon" data-ng-hide="showAscendingIcon"
                                           data-ng-show="showDescendingIcon"></i>
                                    </div>
                                    <div data-ng-if="selectedColumn!=1">
                                        <i class="sort content ascending icon disabled"></i>
                                    </div>
                            </div>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Monto Total..."
                                   data-ng-model="searchByMontoTotal" data-ng-change="applyFiltering()">
                            <i class="search icon"></i>
                        </div>
                        <div data-ng-click="applySorting(2)">
                            <div data-ng-if="selectedColumn==2">
                                <i class="sort content ascending icon" data-ng-show="showAscendingIcon"
                                   data-ng-hide="showDescendingIcon"></i>
                                <i class="sort content descending icon" data-ng-hide="showAscendingIcon"
                                   data-ng-show="showDescendingIcon"></i>
                            </div>
                            <div data-ng-if="selectedColumn!=2">
                                <i class="sort content ascending icon disabled"></i>
                            </div>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Nombre del Cliente..."
                                   data-ng-model="searchByNombreCliente" data-ng-change="applyFiltering()">
                            <i class="search icon"></i>
                        </div>
                        <div data-ng-click="applySorting(3)">
                            <div data-ng-if="selectedColumn==3">
                                <i class="sort content ascending icon" data-ng-show="showAscendingIcon"
                                   data-ng-hide="showDescendingIcon"></i>
                                <i class="sort content descending icon" data-ng-hide="showAscendingIcon"
                                   data-ng-show="showDescendingIcon"></i>
                            </div>
                            <div data-ng-if="selectedColumn!=3">
                                <i class="sort content ascending icon disabled"></i>
                            </div>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="RUC del Cliente..."
                                   data-ng-model="searchByRucCliente" data-ng-change="applyFiltering()">
                            <i class="search icon"></i>
                        </div>
                        <div data-ng-click="applySorting(4)">
                            <div data-ng-if="selectedColumn==4">
                                <i class="sort content ascending icon" data-ng-show="showAscendingIcon"
                                   data-ng-hide="showDescendingIcon"></i>
                                <i class="sort content descending icon" data-ng-hide="showAscendingIcon"
                                   data-ng-show="showDescendingIcon"></i>
                            </div>
                            <div data-ng-if="selectedColumn!=4">
                                <i class="sort content ascending icon disabled"></i>
                            </div>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Fecha..." data-ng-model="searchByFecha"
                                   data-ng-change="applyFiltering()">
                            <i class="search icon"></i>
                        </div>
                        <div data-ng-click="applySorting(5)">
                            <div data-ng-if="selectedColumn==5">
                                <i class="sort content ascending icon" data-ng-show="showAscendingIcon"
                                   data-ng-hide="showDescendingIcon"></i>
                                <i class="sort content descending icon" data-ng-hide="showAscendingIcon"
                                   data-ng-show="showDescendingIcon"></i>
                            </div>
                            <div data-ng-if="selectedColumn!=5">
                                <i class="sort content ascending icon disabled"></i>
                            </div>
                        </div>
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
            Sales XXX details
        </div>
        <div class="content">
            <div class="description">
                {{saleDetails.numero}}
                <br>
                {{saleDetails.monto_total}}
                <br>
                {{saleDetails.nombre_cliente}}
                <br>
                {{saleDetails.ruc_cliente}}
                <br>
                {{saleDetails.fecha}}
            </div>
        </div>
    </div>
</div>
</body>
</html>