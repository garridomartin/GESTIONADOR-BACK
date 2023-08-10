const { User } = require('../db.js');
const hashPassword = require('../utils/hashPassword.js');
const sendEmailNotification = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');

const resetPassController = async () => {};

module.exports = resetPassController;
