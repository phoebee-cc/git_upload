var HashMap = function () {
    let map = {};

    return {
        put: function (newKey, newValue) {
            map[newKey] = newValue;
        },
        
        keys: function () {
            Object.keys(map);
        },
        
        contains: function (newKey) {
            return map.hasOwnProperty(newKey);
        },

        get: function (newKey) {
            return map[newKey];
        },

        clear: function () {
            map = {}; 
        }
    }
}