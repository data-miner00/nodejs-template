import test from "node:test";
import assert from "node:assert";

test("synchronous test", (_t: any) => {
  assert.strictEqual(1, 1);
});

test("asynchronous test", async (_t: any) => {
  assert.strictEqual(1, 1);
});
