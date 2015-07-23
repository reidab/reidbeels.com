---
title: Remove Uploadr Titles
date: '2006-12-17'
tags:
- technology
wp:post_id: '237'
link: http://reidbeels.com/posts/2006/12/remove-uploadr-titles/
---

**Update:**
 Since I wrote this, Flickr has released a new uploadr that handles embedded metadata properly. Yay!


**Problem:**
 The Mac OS X version of the Flickr Uploadr (http://flickr.com/tools) automatically enters the filename in the title field. Contents of this field override title information that is already stored in the file's metadata. This means that if you want flickr to read IPTC titles, you have to manually remove all of the automatically entered titles. (If you don't know why this is a problem, you probably don't need this script.)


**Solution:**
 AppleScript! Using the UI Scripting features present in Mac OS 10.3 and higher, this script will quickly flip through all of the photos in the Uploadr and delete the contents of the title field.


**Usage:**

1. Open some photos in Uploadr.


2. Once Uploadr has finished generating thumbnails, run the script.


3. Sit back and watch the titles disappear. (Seriously, sit back. Don't switch to another application while it's running because it's going to be simulating hitting the delete key a lot. I take no responsibility if you don't listen to directions and end up deleting things. You have been warned.)


In order for this script to have any point, you'll need to have titled your photos and written the metadata back to your original files. I use iView MediaPro to do this, but there are plenty of things out there that can do this. If you happen to be be using iView, you can stick this script in its scripts folder (~/Library/Application Support/iView/Plug-ins/Scripts) and it will appear in the script menu. This offers a convenient place to run it from without having to enable the system-wide script menu.


If you experience problems, email me at uploadr [at] reidab.com.


Feel free to do whatever you want with this script. Hack at it, improve it, break it, distribute it. All I ask is that if you find a way to improve it, let me know (because I use it too) and if you start distributing your own version, take my email address out of it.
