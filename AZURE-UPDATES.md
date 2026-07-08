# Azure Backend Update Recommendations (July 2026)

The frontend is now on Vue 3 + Vite, deployed by Azure Static Web Apps building with Node 22. These are the recommended updates for the backend side of the Cloud Resume Challenge stack.

## Azure Functions (counter API)

- **Runtime**: Ensure the Function App is on Functions runtime **v4** (`FUNCTIONS_EXTENSION_VERSION = ~4`). v1–v3 are retired.
- **Node version**: Node 18 support ended, and **Node 20 support ended April 2026**. Set the app to **Node 22** (`WEBSITE_NODE_DEFAULT_VERSION = ~22` on Windows, or `linuxFxVersion = NODE|22` on Linux). Node 22 is supported until ~April 2027.
- **Programming model**: If the functions still use the v3 model (`function.json` per function), migrate to the **v4 model** (`@azure/functions` v4, code-based registration) — v3 doesn't support Node 22.
- **Cosmos SDK**: Update to the current `@azure/cosmos` v4.x package. If the functions use Cosmos input/output bindings instead, update `@azure/functions` and extension bundle version (`[4.*, 5.0.0)`).

## Cosmos DB

- No migration needed for the counter itself. Verify **serverless capacity mode** (cheapest for this traffic) and that **total account throughput limit** is set if on provisioned RU/s.
- Enable the **free tier** on the account if not already used elsewhere (1000 RU/s + 25 GB free).

## API Management

- If on the **Consumption tier**, nothing to do — it stays cheap and auto-updates.
- Consider whether APIM is still worth it: SWA has **linked backends / built-in `api_location`** so Functions can be served from `/api` on the same domain, removing APIM and CORS entirely. That would simplify the stack and cost, at the expense of showing off one less Azure service.

## Static Web App

- CI/CD workflow updated: `actions/checkout@v4`, Oryx pinned to Node 22 via `NODE_VERSION` env + `engines` in package.json.
- Optional: add a `staticwebapp.config.json` for cache headers and a SPA fallback route.

## Suggested order

1. Bump Function App to runtime v4 + Node 22 (portal or `az functionapp config`).
2. Migrate function code to programming model v4 and `@azure/cosmos` v4 (in the backend repo — connect it and I can do this).
3. Redeploy via the backend's GitHub Actions workflow (bump its `actions/checkout` and `setup-node` versions too).
4. Verify `increment-count` / `get-count` endpoints still respond, then confirm the counter renders on the site.

Sources: [Azure Functions Node.js reference](https://learn.microsoft.com/en-us/azure/azure-functions/functions-reference-node), [Functions runtime versions](https://learn.microsoft.com/en-us/azure/azure-functions/functions-versions), [Migrate to v4 Node model](https://learn.microsoft.com/en-us/azure/azure-functions/functions-node-upgrade-v4)
