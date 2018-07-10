const winston = require('winston');
const {LoggingWinston} = require('@google-cloud/logging-winston');

var logger = new (winston.Logger)({
  transports: [
    new winston.transports.Console({
      handleExceptions: true
    }),
    new LoggingWinston({
      keyFilename: '/var/secrets/keyfile.json',
      logName: 'cloudcats-worker'
    })
  ]
});

module.exports = logger;
