// srv/server.js
const cds = require("@sap/cds");
const v2adapter = require("@cap-js-community/odata-v2-adapter");

// Attach V2 adapter during bootstrap
cds.on("bootstrap", app => {
    app.use(v2adapter());
});

// Export CAP server
module.exports = cds.server;