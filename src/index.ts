import { Hono } from "hono";

const app = new Hono();

app.get("/", (c) => {
  return c.text("Hello Hono!");
});

console.log("app running on " + process.env.NODE_ENV);

export default {
  port: process.env.PORT || 3000,
  fetch: app.fetch,
};
