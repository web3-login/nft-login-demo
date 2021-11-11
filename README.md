# nft-login-demo

This is a page demonstrating the flow of nft-login.
First the user is not logged in.
The login redirects to the nft-login-provider.
After login the user has access to a game,

[Try out the demo](https://nft-login.github.io/nft-login-demo/)

## Chains

Each chain needs a different configuration.

Visit the endpoints for the chains:

https://nft-login.github.io/nft-login-demo/kovan
https://nft-login.github.io/nft-login-demo/okt
https://nft-login.github.io/nft-login-demo/heco
https://nft-login.github.io/nft-login-demo/celo

## Docs

### Constants

* OIDC_CONTEXT_CALLBACK_URL
* OIDC_CONTEXT_CLIENT_PROMISE - key for the OIDC client in setContext/getContext.
* OIDC_CONTEXT_LOGOUT_URL,

## Development

npm run showcase:dev

## Thanks

The frontend is based and modified from the svelte oidc https://github.com/dopry/svelte-oidc.