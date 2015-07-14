---
title: Safari Search Field Widget for WordPress
date: '2006-10-29'
tags:
- technology
wp:post_id: '232'
link: http://reidbeels.com/posts/2006/10/safari-search-field-widget/
---

![Search Field Example](http://reidab.com/wp-content/uploads/2006/10/searchfield.thumbnail.png)
As part of the redesign of this site I decided to implement my site search to support the 
['search' input type supported by Safari](http://www.bartelme.at/journal/archive/safaris_search_field/). It renders as the native OS X search field and can keep track of a user's search history.

This widget is meant to be a drop-in replacement for the default WordPress search widget. To make sure other browsers aren't confused, it checks the user-agent of the requesting browser and only serves the search element to Safari. Other browsers will get a standard text element. Optionally, this text element can be filled with placeholder text that is cleared on focus by javascript. If the widget title is left blank, no title will be displayed (which is ideal if using placeholder text).

To install, just toss safarisearchfield.php into your wp-content/plugins directory, activate the plugin, and add the widget to your sidebar.
