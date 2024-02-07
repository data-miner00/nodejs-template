import { setImmediate } from "node:timers/promises";

setImmediate("result").then((res) => {
  console.log(res);
});

var a = 1,
  b = 2,
  c = 3;

export { a, b, c };
