/**
 * Created by ALEX on 8/14/2015.
 */
angular
    .module("storeApp")
    .factory("storeServices", storeServices);

function storeServices($resource) {
    var URL = '/resources/data:id.json';
    return {
        productsServices: $resource(URL, {
            id: '@id'
        }, {})
    };
}