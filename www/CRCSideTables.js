var exec = require('cordova/exec');

exports.coolMethod = function(success, error, arg0) {
    exec(success, error, "CRCSideTables", "coolMethod", [arg0]);
};

exports.getApproverTree = function(success, error, arg0) {
  exec(success, error, "CRCSideTables", "getApproverTree", [arg0]);
};
