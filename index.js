const http = require('http');
const server = http.createServer((req, res) => {
  res.setHeader('Content-Type', 'text/plain; charset=utf-8');
  res.statusCode = 200;
  res.end('Тестовое задание выполнено успешно!\n');
});
const port = 3000;
server.listen(port, () => {
  console.log(`Сервер слушает на порту ${port}`);
});
