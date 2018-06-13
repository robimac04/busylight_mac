var busylight = require('/usr/local/busylight/API/lib');
var bl = busylight.get();
const args = process.argv.slice(2);

bl.light('red');
