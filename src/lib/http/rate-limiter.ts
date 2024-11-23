import { RateLimiter } from "sveltekit-rate-limiter/server";

export const limiter = new RateLimiter({
  IP: [5, "d"],
	IPUA: [5, "d"]
});
