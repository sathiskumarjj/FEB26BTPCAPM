// srv/server.js
const proxy = require("@cap-js-community/odata-v2-adapter");
const cds = require("@sap/cds");

// Attach V2 adapter during bootstrap
cds.on('bootstrap', app => app.use(proxy()));;

// Export CAP server
module.exports = cds.server;