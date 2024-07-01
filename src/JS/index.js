
const http = require('http');

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hola, Mundo!\n');
});

const port = 443;
server.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}/`);
});