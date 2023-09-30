"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AfipSoap = void 0;
var moment_1 = require("moment");
var soap = require("soap");
var util_1 = require("../util");
var ntp_time_sync_1 = require("ntp-time-sync");
var AfipSoap = /** @class */ (function () {
    function AfipSoap(config) {
        this.config = config;
        this.tokensAliasServices = {
            wsfev1: 'wsfe',
        };
        this.urls = {
            homo: {
                login: 'https://wsaahomo.afip.gov.ar/ws/services/LoginCms?wsdl',
                service: 'https://wswhomo.afip.gov.ar/{name}/service.asmx?wsdl',
            },
            prod: {
                login: 'https://wsaa.afip.gov.ar/ws/services/LoginCms?wsdl',
                service: 'https://servicios1.afip.gov.ar/{name}/service.asmx?WSDL',
            },
        };
    }
    AfipSoap.prototype.getTokens = function (service) {
        return __awaiter(this, void 0, void 0, function () {
            var aliasedService;
            return __generator(this, function (_a) {
                aliasedService = this.tokensAliasServices[service] || service;
                return [2 /*return*/, this.retrieveTokens(aliasedService)];
            });
        });
    };
    AfipSoap.prototype.retrieveTokens = function (service) {
        return __awaiter(this, void 0, void 0, function () {
            var cacheTokens, fromNetwork;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.getTokensFromCache(service)];
                    case 1:
                        cacheTokens = _a.sent();
                        if (cacheTokens) {
                            (0, util_1.debug)(4 /* LOG.INFO */, 'Read config from cache');
                            return [2 /*return*/, cacheTokens];
                        }
                        return [4 /*yield*/, this.getTokensFromNetwork(service)];
                    case 2:
                        fromNetwork = _a.sent();
                        (0, util_1.debug)(5 /* LOG.DEBUG */, 'Tokens from network:', fromNetwork);
                        if (!fromNetwork) return [3 /*break*/, 4];
                        return [4 /*yield*/, this.saveCredentialsCache(service, fromNetwork)];
                    case 3:
                        _a.sent();
                        _a.label = 4;
                    case 4: return [2 /*return*/, fromNetwork];
                }
            });
        });
    };
    AfipSoap.prototype.saveCredentialsCache = function (service, credential) {
        return __awaiter(this, void 0, void 0, function () {
            var cache;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, AfipSoap.getCredentialsCacheAll(this.config.cacheTokensPath)];
                    case 1:
                        cache = _a.sent();
                        cache[service] = credential;
                        (0, util_1.debug)(4 /* LOG.INFO */, 'Write config to cache');
                        return [4 /*yield*/, (0, util_1.writeFile)(this.config.cacheTokensPath, JSON.stringify(cache))];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    AfipSoap.getCredentialsCacheAll = function (path) {
        return __awaiter(this, void 0, void 0, function () {
            var raw, e_1;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, (0, util_1.readStringFromFile)(path)];
                    case 1:
                        raw = _a.sent();
                        return [2 /*return*/, JSON.parse(raw)];
                    case 2:
                        e_1 = _a.sent();
                        if (this.isErrnoException(e_1) && e_1.code === 'ENOENT') {
                            (0, util_1.debug)(3 /* LOG.WARN */, 'Cache file does not exists.');
                        }
                        else {
                            (0, util_1.debug)(2 /* LOG.ERROR */, 'Fail to read cache file: ', e_1);
                        }
                        return [2 /*return*/, {}];
                    case 3: return [2 /*return*/];
                }
            });
        });
    };
    AfipSoap.isErrnoException = function (e) {
        return 'code' in e;
    };
    AfipSoap.prototype.getLoginXml = function (service, networkTime) {
        var expire = (0, moment_1.default)(networkTime).add(this.config.tokensExpireInHours, 'hours');
        var formatDate = function (date) {
            return (0, moment_1.default)(date).format().replace('-03:00', '');
        };
        var xml = "\n            <?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n            <loginTicketRequest version=\"1.0\">\n            <header>\n            <uniqueId>".concat((0, moment_1.default)().format('X'), "</uniqueId>\n            <generationTime>").concat(formatDate(networkTime), "</generationTime>\n            <expirationTime>").concat(formatDate(expire), "</expirationTime>\n            </header>\n            <service>").concat(service, "</service>\n            </loginTicketRequest>\n            ");
        return xml.trim();
    };
    AfipSoap.prototype.signService = function (service) {
        return __awaiter(this, void 0, void 0, function () {
            var date, _a, cert, privateKey;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, AfipSoap.getNetworkHour()];
                    case 1:
                        date = _b.sent();
                        return [4 /*yield*/, this.getKeys()];
                    case 2:
                        _a = _b.sent(), cert = _a[0], privateKey = _a[1];
                        return [2 /*return*/, (0, util_1.signMessage)(this.getLoginXml(service, date), cert, privateKey)];
                }
            });
        });
    };
    AfipSoap.getNetworkHour = function () {
        return __awaiter(this, void 0, void 0, function () {
            var timeSync, res;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        timeSync = ntp_time_sync_1.NtpTimeSync.getInstance({
                            servers: ['time.afip.gov.ar'],
                        });
                        return [4 /*yield*/, timeSync.getTime()];
                    case 1:
                        res = _a.sent();
                        return [2 /*return*/, res.now];
                }
            });
        });
    };
    AfipSoap.prototype.getKeys = function () {
        return __awaiter(this, void 0, void 0, function () {
            var _a;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, this.getCert()];
                    case 1:
                        _a = [_b.sent()];
                        return [4 /*yield*/, this.getPrivateKey()];
                    case 2: return [2 /*return*/, _a.concat([_b.sent()])];
                }
            });
        });
    };
    AfipSoap.prototype.getCert = function () {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (this.config.certContents) {
                            return [2 /*return*/, this.config.certContents];
                        }
                        if (!this.config.certPath) return [3 /*break*/, 2];
                        return [4 /*yield*/, (0, util_1.readStringFromFile)(this.config.certPath)];
                    case 1: return [2 /*return*/, _a.sent()];
                    case 2: throw new Error('Not cert');
                }
            });
        });
    };
    AfipSoap.prototype.getPrivateKey = function () {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (this.config.privateKeyContents) {
                            return [2 /*return*/, this.config.privateKeyContents];
                        }
                        if (!this.config.privateKeyPath) return [3 /*break*/, 2];
                        return [4 /*yield*/, (0, util_1.readStringFromFile)(this.config.privateKeyPath)];
                    case 1: return [2 /*return*/, _a.sent()];
                    case 2: throw new Error('Not private key');
                }
            });
        });
    };
    AfipSoap.prototype.getSoapClient = function (serviceName) {
        var urls = this.urls[this.getAfipEnvironment()];
        var type = serviceName === 'login' ? 'login' : 'service';
        var url = urls[type].replace('{name}', encodeURIComponent(serviceName));
        return soap.createClientAsync(url, {
            namespaceArrayElements: false,
        });
    };
    AfipSoap.prototype.getAfipEnvironment = function () {
        return this.config.homo ? 'homo' : 'prod';
    };
    AfipSoap.prototype.getTokensFromNetwork = function (service) {
        return __awaiter(this, void 0, void 0, function () {
            var _a, signedData, client, result, loginCmsReturn, res;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, Promise.all([
                            this.signService(service),
                            this.getSoapClient('login'),
                        ])];
                    case 1:
                        _a = _b.sent(), signedData = _a[0], client = _a[1];
                        (0, util_1.debug)(4 /* LOG.INFO */, 'Asking tokens from network');
                        return [4 /*yield*/, client.loginCmsAsync({ in0: signedData })];
                    case 2:
                        result = _b.sent();
                        loginCmsReturn = result[0].loginCmsReturn;
                        return [4 /*yield*/, (0, util_1.parseXml)(loginCmsReturn)];
                    case 3:
                        res = _b.sent();
                        return [2 /*return*/, {
                                created: (0, moment_1.default)().format(),
                                service: service,
                                tokens: res.loginTicketResponse.credentials,
                            }];
                }
            });
        });
    };
    AfipSoap.prototype.isExpired = function (expireStr) {
        var now = (0, moment_1.default)(new Date());
        var expire = (0, moment_1.default)(expireStr);
        var duration = moment_1.default.duration(now.diff(expire));
        return duration.asHours() > this.config.tokensExpireInHours;
    };
    AfipSoap.prototype.getTokensFromCache = function (service) {
        return __awaiter(this, void 0, void 0, function () {
            var cache, cacheService;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, AfipSoap.getCredentialsCacheAll(this.config.cacheTokensPath)];
                    case 1:
                        cache = _a.sent();
                        cacheService = typeof cache[service] === 'undefined' ? null : cache[service];
                        if (cacheService && !this.isExpired(cacheService.created)) {
                            return [2 /*return*/, cacheService];
                        }
                        return [2 /*return*/, null];
                }
            });
        });
    };
    AfipSoap.prototype.execMethod = function (service, method, params) {
        return __awaiter(this, void 0, void 0, function () {
            var cred, paramsWithAuth, client, call, _a, result, rawResponse, methodResponse;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        (0, util_1.debug)(4 /* LOG.INFO */, 'execMethod name', method);
                        (0, util_1.debug)(4 /* LOG.INFO */, 'execMethod params', params);
                        return [4 /*yield*/, this.getTokens(service)];
                    case 1:
                        cred = _b.sent();
                        (0, util_1.debug)(4 /* LOG.INFO */, 'TOKENS', cred.tokens);
                        paramsWithAuth = __assign({ Auth: __assign(__assign({}, params.Auth), { Token: cred.tokens.token, Sign: cred.tokens.sign }) }, params.params);
                        (0, util_1.debug)(4 /* LOG.INFO */, 'execMethod params with AUTH', params);
                        return [4 /*yield*/, this.getSoapClient(service)];
                    case 2:
                        client = _b.sent();
                        call = client[method + 'Async'];
                        return [4 /*yield*/, call(paramsWithAuth)];
                    case 3:
                        _a = _b.sent(), result = _a[0], rawResponse = _a[1];
                        (0, util_1.debug)(5 /* LOG.DEBUG */, 'execMethod rawResponse', rawResponse);
                        methodResponse = result[method + 'Result'];
                        AfipSoap.throwOnError(methodResponse);
                        return [2 /*return*/, methodResponse];
                }
            });
        });
    };
    AfipSoap.throwOnError = function (response) {
        if (!response.Errors) {
            return;
        }
        if (!response.Errors.Err) {
            return;
        }
        var resErr = response.Errors.Err[0];
        var err = new Error(resErr.Msg);
        err.name = 'AfipResponseError';
        err.code = resErr.Code;
        throw err;
    };
    return AfipSoap;
}());
exports.AfipSoap = AfipSoap;
