---
title: Farewell jayanta, we barely knew you.
date: '2005-09-11'
tags:
- apartment
- tech
- technology
wp:post_id: '205'
link: http://reidbeels.com/posts/2005/09/building-wireless-is-live/
---

I just talked to the guys who are doing the wireless install for my building and they've just finished working the bugs out and making the system production-ready.  I'd talked to them earlier in the install and gotten the WEP key, but the network stopped giving out DHCP leases about halfway through the week. Here's hoping that the network really is without problems because as proud as I am of my little bridging setup here, I'll be glad to be able to get a connection with all of my windows closed.

Another thing that i've noticed about this connection is that it's noticeably faster than I expected.  As near as I can tell from the little bit of research that I've done, it's a comcast small business connection with 5 mbit downstream / 512kbit up.  Now, the upstream isn't great, but it's a lot better than the 128 kbit cap that afn and comcast residential put on things. Of course, this is likely to seem slightly less-speedy once other people in the building get ahold of the WEP key, but there are only 14 units so I think it should work out fine as long as people don't run 
too many uncapped bittorrent sessions.

I'll be switching my little network-within-a-network here over to using the new system for connectivity in the next day or so and then I'll be able to start figuring out a way to tunnel a ssh connection into my G4 tower for cool remote-access projects. I've been considering wiring it to the door buzzer in case I ever get locked out of the building and need a nerdy way to get back in.  Of course, i'd still probably be locked out of my apartment since electronic locks seem like a bit of overkill, but whatever.


**Update:**
 It seems that many things that require a persistant connection such as AIM and some forms of streaming audio/video don't work with this connection.  From what I've found online it might be a problem with the ARP tables but I don't have any way to contact the guys who installed the network right now so I haven't been able to get it fixed.
