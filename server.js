import { handler } from "./build/handler.js";
import express from "express";
import helmet from "helmet";
import http from "http";
import { createTerminus } from "@godaddy/terminus";

const app = /** @type {express.Express} */ (express());

app.use(helmet.contentSecurityPolicy({
  directives: {
    "img-src": ["'self'", "https: data: blob:"],
    "script-src": ["'self'", "'unsafe-inline'", "https:", "http:"],
  }
}));

app.use(handler);

const server = /** @type {http.Server} */ (http.createServer(app));

createTerminus(server, {
  signals: ['SIGTERM', 'SIGINT'],
  onSignal: async () => {
    // Call your cleanup functions below. For example:
    // db.shutdown()
  },
});

server.listen(3000, () => {
  console.log("⚡ Listening on port 3000");
});