"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AfipServices = void 0;
var AfipSoap_1 = require("./lib/AfipSoap");
var AfipServices = /** @class */ (function () {
    function AfipServices(config) {
        this.config = config;
        this.afipSoap = new AfipSoap_1.AfipSoap(config);
    }
    AfipServices.prototype.createBill = function (params) {
        var service = "wsfev1";
        var method = "FECAESolicitar";
        return this.afipSoap.execMethod(service, method, params);
    };
    AfipServices.prototype.getLastBillNumber = function (params) {
        var service = "wsfev1";
        var method = "FECompUltimoAutorizado";
        return this.afipSoap.execMethod(service, method, params);
    };
    AfipServices.prototype.execRemote = function (service, method, params) {
        return this.afipSoap.execMethod(service, method, params);
    };
    return AfipServices;
}());
exports.AfipServices = AfipServices;
