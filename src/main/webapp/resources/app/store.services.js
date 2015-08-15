/**
 * Created by ALEX on 8/14/2015.
 */
angular
    .module("storeApp")
    .factory("storeServices", storeServices);

function storeServices($resource) {
    var URL = '/resources/data:id.json';
    var URLtest = '/ventas/';

    return {
        salesServices: $resource(URL, {
            id: '@id'
        }, {}),
        testURL: $resource(URLtest, {}, {
            'get': {method: 'GET'}
        })

    };
}