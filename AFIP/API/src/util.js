"use strict";
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
exports.signMessage = exports.readStringFromFile = exports.parseXml = exports.debug = exports.writeFile = exports.readFile = void 0;
var fs = require("fs");
var forge = require("node-forge");
var xml2js_1 = require("xml2js");
var debug_1 = require("debug");
var LOG_RUNTIME_LEVEL = parseProcessLevel();
var LOG_NAMESPACE = 'facturajs';
var debugLib = (0, debug_1.default)(LOG_NAMESPACE);
exports.readFile = fs.promises.readFile;
exports.writeFile = fs.promises.writeFile;
function parseProcessLevel() {
    if (typeof process.env.LOG_LEVEL !== 'undefined') {
        return parseInt(process.env.LOG_LEVEL, 10);
    }
    return 4 /* LOG.INFO */;
}
function debug(level) {
    var rest = [];
    for (var _i = 1; _i < arguments.length; _i++) {
        rest[_i - 1] = arguments[_i];
    }
    if (LOG_RUNTIME_LEVEL < level) {
        return;
    }
    //@ts-expect-error not typed
    return debugLib.apply(void 0, rest);
}
exports.debug = debug;
function parseXml(xml) {
    var options = {
        explicitArray: false,
    };
    return new Promise(function (resolve, reject) {
        xml2js_1.default.parseString(xml, options, function (err, parsed) {
            if (err) {
                reject(err);
            }
            else {
                resolve(parsed);
            }
        });
    });
}
exports.parseXml = parseXml;
function readStringFromFile(path, encoding) {
    if (encoding === void 0) { encoding = 'utf8'; }
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, (0, exports.readFile)(path)];
                case 1: return [2 /*return*/, (_a.sent()).toString(encoding)];
            }
        });
    });
}
exports.readStringFromFile = readStringFromFile;
function signMessage(message, cert, privateKey) {
    var p7 = forge.pkcs7.createSignedData();
    p7.content = forge.util.createBuffer(message, 'utf8');
    p7.addCertificate(cert);
    p7.addSigner({
        authenticatedAttributes: [
            {
                type: forge.pki.oids.contentType,
                value: forge.pki.oids.data,
            },
            {
                type: forge.pki.oids.messageDigest,
            },
            {
                type: forge.pki.oids.signingTime,
                value: new Date(),
            },
        ],
        certificate: cert,
        digestAlgorithm: forge.pki.oids.sha256,
        key: privateKey,
    });
    p7.sign();
    var bytes = forge.asn1.toDer(p7.toAsn1()).getBytes();
    return Buffer.from(bytes, 'binary').toString('base64');
}
exports.signMessage = signMessage;
