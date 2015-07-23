---
title: Text Masks with sIFR3
date: '2007-02-06'
tags:
- design
wp:post_id: '242'
link: http://reidbeels.com/posts/2007/02/text-masks-with-sifr3/
---

[![sIFR Masking, thumbnail](http://farm1.static.flickr.com/177/382233362_31499d22b7_o.jpg)](http://reidab.com/photos/photo/382233362/sIFR_Masking_thumbnail.html) 

I've been using sIFR for a while to get pretty typography for my headers on this site. As part of my latest design refresh, I upgraded to the 
[beta of sIFR 3](http://novemberborn.net/sifr3) and discovered something cool in the process. It's possible to embed an image within the flash movie used by sIFR and use the dynamic text to mask the image, creating some nifty effects.  The gradienty text in the header (which displays my current 
[Twitter](http://twitter.com) status) is done using this technique and  I'm exploring how it can be used for other fun things. The drawbacks to this is that you have to create  a separate flash file for every image you want to mask and that file is also separate from any other sIFR stuff that you happen to be doing.  The same effect could be acheived by using server-side tech to generate images  (which would be a bit smaller than the flash file), but the ease-of-use and ability to modify the text at runtime makes sIFR masking interesting. If you're curious as to how to pull it off (even if you've never touched flash before), read on.


*Set up your font properties as per the sIFR instructions.

	
*Return to Scene 1 by clicking the icon in the upper left of the window.
[![sIFR Masking, part 1](http://farm1.static.flickr.com/132/382184068_d5fde11333.jpg)](http://reidab.com/photos/photo/382184068/sIFR_Masking_part_1.html)

	
*Create a new layer.

	
*Drag your new layer to the bottom of the layer stack.
[![sIFR Masking, part 2](http://farm1.static.flickr.com/162/382184083_907b33a2e6.jpg)](http://reidab.com/photos/photo/382184083/sIFR_Masking_part_2.html)

	
*With the new layer selected, paste the image you want to mask. Since the flash movie is enlarged by sIFR, the image you paste should bleed off the right side enough to accomodate whatever text you want to render.
[![Picture 6.png](http://farm1.static.flickr.com/173/382217245_b81bfc6580.jpg)](http://reidab.com/photos/photo/382217245/Picture_6png.html)

	
*Right click (or control-click) on the 'font' layer and choose 'Mask' from the contextual menu.
[![sIFR Masking, part 3](http://farm1.static.flickr.com/169/382184105_3f9e24d863.jpg)](http://reidab.com/photos/photo/382184105/sIFR_Masking_part_3.html)

	
*That's it! Just export your movie and use it like any other sIFR movie.
[![sIFR Masking, part 4](http://farm1.static.flickr.com/151/382184114_deaa44f38b.jpg)](http://reidab.com/photos/photo/382184114/sIFR_Masking_part_4.html)
