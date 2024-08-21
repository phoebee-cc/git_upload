var HashMap = function () {
    let obj = {};

    return {
        put: function (newKey, newValue) {
            obj[newKey] = newValue;
        },
        
        keys: function () {
            const keySet = [];
            for (let k in obj) {
                keySet.push(k); 
            }
            return keySet;
        },
        
        contains: function (newKey) {
            return obj.hasOwnProperty(newKey);
        },

        get: function (newKey) {
            return obj[newKey];
        },

        clear: function () {
            obj = {}; 
        }
    };
};