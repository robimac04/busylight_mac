var busylight = require('/usr/local/testdrive/busylight/lib');
var bl = busylight.get();
const args = process.argv.slice(2);

bl.light('rgb(0,255,0)');

