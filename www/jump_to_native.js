cordova.define("cn.com.quantdo.JumpToNative", function(require, exports, module) {
               var exec = require("cordova/exec");
               function JumpToNative() {};
               
               JumpToNative.prototype.jumpToNative = function (doToast) {
               exec(doToast, null, 'JumpToNative', 'jumpToNative', []);
               };
               var jumpToNative = new JumpToNative();
               module.exports = myToast;
               });