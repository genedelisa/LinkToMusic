#LinkToMusic

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://en.wikipedia.org/wiki/MIT_License)

[![Swift 3](https://img.shields.io/badge/swift3-compatible-4BC51D.svg?style=flat")](https://developer.apple.com/swift)

[![Platforms iOS](https://img.shields.io/badge/Platforms-iOS-lightgray.svg?style=flat)](https://swift.org/)

[![Sponsors](https://img.shields.io/badge/Sponsors-Rockhopper%20Technologies-orange.svg?style=flat)](http://www.rockhoppertech.com/)
[![Twitter @GeneDeLisaDev](https://img.shields.io/twitter/follow/GeneDeLisaDev.svg?style=social)](https://twitter.com/GeneDeLisaDev)



An example of how to crash Apple's iOS Music app.

All I'm doing is trying to open a URL retrieved via the [iTunes search API] (https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/)

I've also tried using URLs created via Apple's [Link Maker] (https://linkmaker.itunes.apple.com/en-us) and [Apple Music Toolbox] (https://tools.applemusic.com/en-us)

I've tried many different parameters. The app=music param is supposed to tell iOS to open the link in Apple Music.

All of these links have worked when I pasted them into a browser.

This will work the first time your press the button. It will crash the second time.

Sometimes the first time you press the button the link will just stay at the browse page in apple music. 

This is really not a complicated example. I just try to open the URL via UIApplication or the new Safari Service.
Same bad results with either.

# NB

It is Apple's Music app that crashes, and not this example.
In the crash log there is this message:

    Application Specific Information:
    attempted to retain deallocated object



## Blog post for this example.

[Blog post](http://www.rockhoppertech.com/blog/)



### Buy my kitty Giacomo some cat food

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=F5KE9Z29MH8YQ&bnP-DonationsBF:btn_donate_SM.gif:NonHosted)

<img src="http://www.rockhoppertech.com/blog/wp-content/uploads/2016/07/momocoding-1024.png" alt="Giacomo Kitty" width="400" height="300">



## Licensing

[MIT](https://en.wikipedia.org/wiki/MIT_License)

Please read the [LICENSE](LICENSE) for details.

## Credits

*	[Gene De Lisa's development blog](http://rockhoppertech.com/blog/)
*	[Gene De Lisa's music blog](http://genedelisa.com/)
*   Twitter: [@GeneDeLisaDev](http://twitter.com/genedelisadev)
