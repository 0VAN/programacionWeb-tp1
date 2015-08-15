<html data-ng-app="storeApp">

<link rel="stylesheet" type="text/css" href="resources/static/css/table.css">
<link rel="stylesheet" type="text/css" href="resources/static/css/semantic.css">

<script type="application/javascript" src="resources/static/js/jquery-2.1.4.min.js"></script>
<script type="application/javascript" src="resources/static/js/angular.js"></script>
<script type="application/javascript" src="resources/static/js/angular-resource.js"></script>
<script type="application/javascript" src="resources/static/js/angular-route.js"></script>
<script type="application/javascript" src="resources/static/js/semantic.js"></script>

<script type="application/javascript" src="resources/app/storeApp.js"></script>


<body data-ng-controller="listProductsController">

<div class="ui divider"></div>
<div class="ui two column centered grid">
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
                            <input class="prompt" type="text" placeholder="Name..." data-ng-model="searchByName">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Last Name..." data-ng-model="searchByLastName">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="CI..." data-ng-model="searchByCI">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
            </tr>
            </thead>
            <tbody data-ng-model="productsList"
                   data-ng-repeat="product in productsList | filter:globalSearch | filter:{firstName:searchByName,lastName:searchByLastName,CI:searchByCI}">
            <tr>
                <td>{{product.firstName}}</td>
                <td>{{product.lastName}}</td>
                <td>{{product.CI}}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>