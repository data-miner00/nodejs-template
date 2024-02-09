import { a } from "./interval.js";
import http from "http";
import addon from "../build/Release/hello.node";

const port = 2999 + a;

const server = http.createServer(function (_req: any, res: any) {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.write(`hello ${addon.hello()}`);
  res.end();
});

server.listen(port, function (error: unknown) {
  if (error) {
    console.error("Something went wrong: ", error);
  } else {
    console.log("Server listening on port " + port);
  }
});
