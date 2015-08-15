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
<div class="ui three column centered grid">
    <div class="five column centered row">
        <div class="column"></div>
        <div class="column"></div>
        <div class="column">
            <div class="ui fluid category search" id="global-search">
                <div class="ui icon input">
                    <input class="prompt" type="text" placeholder="Search..." data-ng-model="globalSearch">
                    <i class="search icon"></i>
                </div>
                <div class="results"></div>
            </div>
        </div>
    </div>

    <div class="column">
        <table class="ui celled table">
            <thead>
            <tr>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Numero..." data-ng-model="searchByName">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Monto Total..."
                                   data-ng-model="searchByLastName">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Nombre del Cliente..."
                                   data-ng-model="searchByCI">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="RUC del Cliente..."
                                   data-ng-model="searchByCI">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Fecha..." data-ng-model="searchByCI">
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
        </table>
    </div>

    <div class="ui modal">
        <i class="close icon"></i>

        <div class="header">
            Product XXX details
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