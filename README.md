# browserstack-node-example
## Setup

### git clone
```bash
$ git clone git@github.com:imunew/browserstack-node-example.git
$ cd browserstack-node-example
```

### npm install
```bash
$ npm install
```

### Create config.coffee from config.coffee.dist
```bash
$ cp tests/config.coffee.dist tests/config.coffee
$ vi tests/config.coffee
```

###Edit {browserstack.user} and {browserstack.key}.
```coffee
# tests/config.coffee
config.browserstack = {
  "browserstack.user" : "{input your user}",
  "browserstack.key" : "{input your key}",
  "browserstack.debug" : "true"
}
```


## Run test

### npm run
```bash
npm run e2e-test:example
```

### result
```bash
$ npm run e2e-test:example

> browserstack-node-example@1.0.0 e2e-test:example /path/to/app/browserstack-node-example
> mocha --compilers coffee:coffee-script/register tests/browserstack-example.coffee



  E2E test examples with "browserstack-webdriver"
BrowserStack - Google Search
    ✓ Search "BrowserStack" by google. (17570ms)


  1 passing (18s)
```
