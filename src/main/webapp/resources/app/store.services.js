/**
 * Created by ALEX on 8/14/2015.
 */
angular
    .module("storeApp")
    .factory("storeServices", storeServices);

function storeServices($resource) {
    return {
        salesServices: function (URL) {
            return $resource(URL, {}, {})
        }
    };
}