var casper = require('casper').create();
 
casper.start();
casper.userAgent("Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26" +
                     " (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25");
casper.open('http://www.youtube.com/').viewport(1024, 690).then(function() {
    this.capture('youtube-ipad.png');
    });
casper.run();
