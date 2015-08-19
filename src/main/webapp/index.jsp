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
<script type="application/javascript" src="resources/app/store.controller.js"></script>

<script type="application/javascript" src="resources/app/store.directive.js"></script>


<body data-ng-controller="listSalesController as listCtrl">

<list-directive data-config="listCtrl.listConfig"></list-directive>


<%--<div class="ui divider"></div>--%>

<%--<div class="ui fluid category search" id="global-search">--%>
<%--<div class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="Search..." data-ng-model="globalSearch"--%>
<%--data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="ui divider"></div>--%>

<%--<div class="ui centered grid">--%>
<%--<div class="thirteen wide column">--%>
<%--<table class="ui selectable celled table">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>--%>
<%--<div class="ui fluid category search">--%>
<%--<div class="ui icon">--%>
<%--<div data-ng-if="column1.searchable" class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="{{column1.name}}..." data-ng-model="column1.searchBox"--%>
<%--data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="column1.searchable==false" class="ui box">--%>
<%--<label>{{column1.name}}</label>--%>
<%--</div>--%>

<%--<div data-ng-click="applySorting(1)">--%>
<%--<div data-ng-if="selectedColumn==1">--%>
<%--<i class="sort content ascending icon" data-ng-show="showAscendingIcon"--%>
<%--data-ng-hide="showDescendingIcon"></i>--%>
<%--<i class="sort content descending icon" data-ng-hide="showAscendingIcon"--%>
<%--data-ng-show="showDescendingIcon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="selectedColumn!=1">--%>
<%--<i class="sort content ascending icon disabled"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</th>--%>
<%--<th>--%>
<%--<div class="ui fluid category search">--%>
<%--<div class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="{{column2.name}}..."--%>
<%--data-ng-model="searchByMontoTotal" data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--<div data-ng-click="applySorting(2)">--%>
<%--<div data-ng-if="selectedColumn==2">--%>
<%--<i class="sort content ascending icon" data-ng-show="showAscendingIcon"--%>
<%--data-ng-hide="showDescendingIcon"></i>--%>
<%--<i class="sort content descending icon" data-ng-hide="showAscendingIcon"--%>
<%--data-ng-show="showDescendingIcon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="selectedColumn!=2">--%>
<%--<i class="sort content ascending icon disabled"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</th>--%>
<%--<th>--%>
<%--<div class="ui fluid category search">--%>
<%--<div class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="{{column3.name}}..."--%>
<%--data-ng-model="searchByNombreCliente" data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--<div data-ng-click="applySorting(3)">--%>
<%--<div data-ng-if="selectedColumn==3">--%>
<%--<i class="sort content ascending icon" data-ng-show="showAscendingIcon"--%>
<%--data-ng-hide="showDescendingIcon"></i>--%>
<%--<i class="sort content descending icon" data-ng-hide="showAscendingIcon"--%>
<%--data-ng-show="showDescendingIcon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="selectedColumn!=3">--%>
<%--<i class="sort content ascending icon disabled"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</th>--%>
<%--<th>--%>
<%--<div class="ui fluid category search">--%>
<%--<div class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="{{column4.name}}..."--%>
<%--data-ng-model="searchByRucCliente" data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--<div data-ng-click="applySorting(4)">--%>
<%--<div data-ng-if="selectedColumn==4">--%>
<%--<i class="sort content ascending icon" data-ng-show="showAscendingIcon"--%>
<%--data-ng-hide="showDescendingIcon"></i>--%>
<%--<i class="sort content descending icon" data-ng-hide="showAscendingIcon"--%>
<%--data-ng-show="showDescendingIcon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="selectedColumn!=4">--%>
<%--<i class="sort content ascending icon disabled"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</th>--%>
<%--<th>--%>
<%--<div class="ui fluid category search">--%>
<%--<div class="ui icon input">--%>
<%--<input class="prompt" type="text" placeholder="{{column5.name}}..." data-ng-model="searchByFecha"--%>
<%--data-ng-change="applyFiltering()">--%>
<%--<i class="search icon"></i>--%>
<%--</div>--%>
<%--<div data-ng-click="applySorting(5)">--%>
<%--<div data-ng-if="selectedColumn==5">--%>
<%--<i class="sort content ascending icon" data-ng-show="showAscendingIcon"--%>
<%--data-ng-hide="showDescendingIcon"></i>--%>
<%--<i class="sort content descending icon" data-ng-hide="showAscendingIcon"--%>
<%--data-ng-show="showDescendingIcon"></i>--%>
<%--</div>--%>
<%--<div data-ng-if="selectedColumn!=5">--%>
<%--<i class="sort content ascending icon disabled"></i>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<tr data-ng-model="salesList"--%>
<%--data-ng-repeat="sale in salesList"--%>
<%--data-ng-click="displaySalesInformation(sale)">--%>
<%--<td>{{sale.numero}}</td>--%>
<%--<td>{{sale.monto_total}}</td>--%>
<%--<td>{{sale.nombre_cliente}}</td>--%>
<%--<td>{{sale.ruc_cliente}}</td>--%>
<%--<td>{{sale.fecha}}</td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--<tfoot>--%>
<%--<tr>--%>
<%--<th colspan="5">--%>
<%--<div class="ui right floated pagination menu">--%>
<%--<a class="icon item" data-ng-click="goBackPage()" data-ng-if="checkNumberDown()">--%>
<%--<i class="left arrow icon"></i>--%>
<%--</a>--%>
<%--<a class="active item">--%>
<%--{{page}} of {{salesMeta.total_pages}}--%>
<%--</a>--%>
<%--<a class="icon item" data-ng-if="checkNumberUp()" data-ng-click="goNextPage()">--%>
<%--<i class="right arrow icon"> </i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</th>--%>
<%--</tr>--%>
<%--</tfoot>--%>
<%--</table>--%>
<%--</div>--%>

<%--<div class="ui modal">--%>
<%--<i class="close icon"></i>--%>

<%--<div class="header">--%>
<%--Detalles de Venta--%>
<%--</div>--%>
<%--<div class="content">--%>
<%--<div class="description">--%>
<%--<table class="ui striped table">--%>
<%--<tr>--%>
<%--<td> Nombre</td>--%>
<%--<td> {{saleDetails.numero}}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td> Monto Total</td>--%>
<%--<td> {{saleDetails.monto_total}}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td> Cliente</td>--%>
<%--<td> {{saleDetails.nombre_cliente}}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td> RUC</td>--%>
<%--<td> {{saleDetails.ruc_cliente}}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td> Fecha de Venta</td>--%>
<%--<td> {{saleDetails.fecha}}</td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
</body>
</html>