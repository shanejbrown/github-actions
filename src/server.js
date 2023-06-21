const http = require('http');
const os = require('os');

const hostname = '0.0.0.0';
const port = 8080;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader("Content-Type", "text/plain");
    res.end(
`Hello from node.js in ${process.arch}!!
OS: ${os.release()}
target platform: TARGETPLATFORM
build platform: BUILDPLATFORM
`
);
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});
