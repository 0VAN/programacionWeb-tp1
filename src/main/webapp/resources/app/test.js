/**
 * Created by ALEX on 8/14/2015.
 */

angular
    .module('tp1', [])
    .controller('listaGenerica',listaGenerica);

function listaGenerica($scope){
    var data = {
        employees: [
            {firstName: 'John', lastName: 'Doe', CI: '123'},
            {firstName: 'Anna', lastName: 'Smith', CI: '456'},
            {firstName: 'Peter', lastName: 'Jones', CI: '789'}
        ]
    };

    $scope.globalSearch='';
    $scope.searchByName='';
    $scope.searchByCI='';
    $scope.searchByLastName='';
    $scope.datos = data.employees;

}