---
title: Pondering Redesign
date: '2006-02-05'
tags:
- design
- design
- ideas
- personal
- web
wp:post_id: '224'
link: http://reidbeels.com/posts/2006/02/pondering-redesign/
---

While I had a vague idea of features that I'd wanted to include when working on my current site design, I hadn't thoguht them through enough when I started. As it happened, the design evolved out of some things that I discovered while implementing a different design in css and just stuck. In this process, it lost the ability to work with some of the functionality that I wanted it to have and it's just kind of sat here in a half-finished state for some time now. Because I'm tired of it sitting like this and need to get a solid design worked out so I can focus on content and other important things, I'm redesigning the site with a lot more focus. Read on for a list of stuff that I'm planning on doing. Tell me if any of it sounds crazy.

<!--more-->*General Improvements*cleaner overall layout

	
*clean up sidebar*create images for some type

	
*refine color choices

	
*refine headerscolors that I like more (hey, it's my site, I get to like the colors)

*decide between single color scheme and sectional colorsability for different sections of the site to use different grid systems for body content. basically, this requires that I do something different with the navigation and axe the constant right-hand column (which is good, because its current implementation is impossible to support in ie without recoding it anyway).
	put more thought into comments interface and unify this look between all commentable systems
	unify tagging between all systems that tag
	pay lots of attention to every typeographical detail
	stop being stubborn about not using images, they can make things look good
	Blog

*rework information design for post metadata and comments

	
*improved handling of post summaries

	
*add visual cues (other than page location) to age of post

	
*reformat archive access to something compact that makes sense

	
*reformat tag list, also to something compact that makes sense. possilby only list popular tags because at the moment i try to keep the number of tags at a minimum so the list won't get too long which really defeats the point of tags over categories

	
*on that note, reimplement categories because they're actually useful in addition to tags.

	
*if feeling like following trends, implement live search

	
*set up styles for images in posts

	
*integrate geotagging / map display

	
*(?) linkroll. I know it's kind of overdone, but i find myself really often wanting to share little things that I come across and this does seem like an ideal way to handle thatPhoto Galleries

*update zenphoto exif import code and deploy sorting by exif capture date

	
*update template to best display information about the photo in the most elegant possible fashion

	
*(?) implement next/prev as overlays to main image

	
*hide comment form by default, appear when requested.

	
*(?) lightbox.js

	
*add support for geotagging / mapping to zenphotoPhotoblog / Daily Photo / Daily Image

*integrated with zenphoto install in some way. either zenphoto should handle the entire process including comments and rss, or the images should automatically be pulled from zenphoto into a wordpress category

	
*display template similar to the zenphoto image display, with added chronological navigationDesign Portfolio / Promotion site

*easily updatable portfolio including the option of multiple files/images/links for each profiled item

	
*display of posts in a 'design' WP category

	
*generation of a recent work feed that can be displayed on the journal and frontpage

	
*thematic areas for design profiles (as in, total control over the type, color, etc for each profile to match the feeling of the item)Code Site / More Promotion

*basically, identical to the design portfolio, but with obvious modifications to the type of stuff that gets displayed.Map

*aggregate display of all geotagging on the site, both photos and blog entries

	
*additional markers for landmarks that should be mapped here, but do not correspond with posts or photos

	
*if possible, real-time filtering of which points are displayed

	
*intelligent consolidation of map markers when zoom level is decreased

	
*ability to filter to a single set of items (e.g. photos in a single album)Now

*aggregation of all providable data on my current whereabouts, intelligently selecting the most recent for conjecture

	
*including, im status message, ip address (x-referenced with a table of known ip blocks corresponding with map points), iCal items, blog post locations, photo locations, and messages input directly into the system
