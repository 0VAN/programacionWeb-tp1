<html data-ng-app="">

<link rel="stylesheet" type="text/css" href="resources/static/css/table.css">
<link rel="stylesheet" type="text/css" href="resources/static/css/semantic.css">

<script type="application/javascript" src="resources/static/js/jquery-2.1.4.min.js"></script>
<script type="application/javascript" src="resources/static/js/angular.js"></script>
<script type="application/javascript" src="resources/static/js/angular-resource.js"></script>
<script type="application/javascript" src="resources/static/js/angular-route.js"></script>
<script type="application/javascript" src="resources/static/js/semantic.js"></script>
<body>
<div class="ui divider"></div>
<div class="ui two column centered grid">
    <div class="five column centered row">
        <div class="column"></div>
        <div class="column"></div>
        <div class="column">
            <div class="ui fluid category search" id="global-search">
                <div class="ui icon input">
                    <input class="prompt" type="text" placeholder="Search...">
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
                            <input class="prompt" type="text" placeholder="Name...">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Status...">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
                <th>
                    <div class="ui fluid category search">
                        <div class="ui icon input">
                            <input class="prompt" type="text" placeholder="Notes...">
                            <i class="search icon"></i>
                        </div>
                        <div class="results"></div>
                    </div>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>John</td>
                <td>Approved</td>
                <td>None</td>
            </tr>
            <tr>
                <td>Jamie</td>
                <td>Approved</td>
                <td>Requires call</td>
            </tr>
            <tr>
                <td>Jill</td>
                <td>Denied</td>
                <td>None</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <th>3 People</th>
                <th>2 Approved</th>
                <th></th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
</body>
</html>