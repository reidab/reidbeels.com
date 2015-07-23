---
title: Introducing TweetScope
date: '2009-03-10'
tags:
- technology
wp:post_id: '742'
link: http://reidbeels.com/posts/2009/03/tweetscope/
---

In November, I [launched](http://twitter.com/reidab/statuses/1008110918) [afterhours.reidab.com](http://afterhours.reidab.com), a little site to display the __[#afterhours](http://tagal.us/tag/afterhours)__ hashtag used by many Portlanders to discuss their late-night activities on [Twitter](http://twitter.com). The concept of pairing design with Twitter search results appealed to me and I soon spawned other sites tracking [bacon](http://bacon.reidab.com), [electric blankets](http://electricblanket.reidab.com), [those damn kids these days with that noise they call music](http://getoffmylawn.reidab.com), and [CyborgCamp](http://cyborgcamp.reidab.com).


[![#afterhours](http://reidbeels.com/wp-content/uploads/2009/03/tweetscope.png)](http://afterhours.reidab.com)

I've recently cleaned up and improved the code that powers these sites and am releasing it as an open-source project: [TweetScope](http://github.com/reidab/tweetscope). It's all written in [Ruby](http://www.ruby-lang.org) using the [Sinatra](http://sinatrarb.com) web framework, both of which make me happy.

Setting up your own site with TweetScope is pretty simple.

1. Grab a copy of the source from GitHub: `git clone git://github.com/reidab/tweetscope.git`
2. Create a new site: `rake site:create`
3. Edit your new site's config.yml file to tell it what to search for and set other options.
4. Test things out by running `ruby tweetscope.rb` and visiting http://localhost:4567 in your browser.
5. Edit the CSS and template files to customize your site's design and structure.

The TweetScope distribution is optimized for easy deployment to [Heroku](http://heroku.com) (free, as of this writing), and I've written up a [little deployment guide](http://wiki.github.com/reidab/tweetscope/easy-deployment-to-heroku) for their platform.

If you end up setting up your own sites, I'd love to know about it. Enjoy!
