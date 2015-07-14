---
title: Put Shizzow in your Menu Bar
date: '2009-03-22'
tags:
- technology
wp:post_id: '758'
link: http://reidbeels.com/posts/2009/03/shizzow-client/
---

![A screenshot of Shizzow running inside of Fluid as a MenuExtra SSB.](http://reidbeels.com/wp-content/uploads/2009/03/shizzow-client-screenshot.jpg)

Soon after the launch of the Portland-based location tracking site, [Shizzow](http://www.shizzow.com/), I put together client of sorts using a set of javascripts and CSS styles inside of a [Fluid](http://fluidapp.com) site-specific browser. I recently updated this code to work with the latest design revision of Shizzow and decided to take the opportunity to bundle them up for distribution. 

### Features

* Simplified site layout to work well in a compact window.
* [Growl](http://growl.info/) notifications for shouts.
* Automatically refreshes the homepage every minute, unless you're typing a message.
* Automatically returns you to the homepage after a period of inactivity.

### Download

* A quick and easy [packaged version](http://cloud.github.com/downloads/reidab/shizzow-fluid/Shizzow_Fluid_Client.zip)
* The [source files](http://github.com/reidab/shizzow-fluid)

### Build Your Own

Fluid is a great tool for bringing web applications closer to the desktop and I'm presenting this initial release with step-by-step instructions of how I build the client in the hopes that it will encourage people to experiment with it. You can either grab the packaged version or follow along below and you'll (hopefully) end up with the same result.

1. Download [Fluid](http://fluidapp.com/).

2. Grab a copy of the latest support files from the [github repository](http://github.com/reidab/shizzow-fluid). They'll bundle up [a convenient zip file](http://github.com/reidab/shizzow-fluid/zipball/master) just for you.

   You'll end up with five files:
   * Display Growl Notifications.user.js
   * Reload Shizzow.user.js
   * Return to Shizzow Homepage.user.js
   * shizzow-icon.png
   * userstyles.css

3. Open Fluid and fill out the form as follows and click _Create_.
   * **URL:** http://www.shizzow.com/
   * **Name:** Shizzow
   * **Location:** wherever you want the app to be created
   * **Icon:** Choose _Other..._, then pick shizzow-icon.png from the support files.
   
4. Open your newly created site-specific browser and bask in its glory for a moment before choosing _Preferences_ from the _Shizzow_ menu and navigating to the _Userstyles_ section.

5. In the _Userstyles_ preference pane, click the plus button to add a URL Pattern, click the checkbox that appears (to enable the pattern) and edit it to read 
http://\*.shizzow.com/\*. Next, paste the contents of userstyles.css into the large field at the bottom of the window. When you refresh the browser window, things should change quite a bit.

6. To add our extra functionality, choose _Open Userscripts Folder_ from the script menu (the icon to the right of the _Window_) menu) and drag the three .user.js files from the support files into the folder that opens. With that done, bounce back to the Shizzow app and choose _Reload all Userscripts_ (again from the script menu). The script menu should now have three brand new items in it. Choose each of these in turn to enable the scripts.

7. Finally, choose _Convert to MenuExtra SSB…_ from the _Shizzow_ menu to make your client hide away in your menu bar.
