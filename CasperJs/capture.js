var userAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36';


var casper = require('casper').create({
  viewportSize:{
    width: 1280,
    height: 800
  }
});

casper.options.waitTimeout = 1000;
casper.userAgent(userAgent);

casper.start();

casper.open('http://google.co.jp').then(function() {
    this.capture('img/google.png');
});

casper.run();
