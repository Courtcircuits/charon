# State of the art

## Packet encapsulation

We basically want to encapsulate CSP packets in the bundle protocol while conserving the CSP routing. Such description is shared by [IP tunnels](https://en.wikipedia.org/wiki/IP_tunnel) which provide most of the described features except that the routing protocol is IP. The [RFC 1853 : IP in IP tunneling](https://www.rfc-editor.org/rfc/rfc1853) explains in its introduction that  :
>    The IP in IP encapsulation Protocol/Payload number 4 [RFC-1700] has
   long been used to bridge portions of the Internet which have disjoint
   capabilities or policies

Delay/Disruption tolerance is definitely a network capability that such tunnels don't provide unfortunately and as far as I'm aware there seems to be no such project (if someone could confirm that it'd be beautiful).

## Convergence layer for CSP

The MVP of this project couldn't be possible if the bundle protocol didn't support CSP as a convergence layer. This is an on-going work by some people at [DTN-MTP](https://github.com/DTN-MTP/). They are implementing a [convergence layer](https://en.wikipedia.org/wiki/Convergence_(routing)) for CSP called [CSPCL](https://dtn-mtp.github.io/cspcl/). It is integrated to [µDTN](https://d3tn.com/ud3tn.html) and is about to be integrated to [hardy](https://github.com/ricktaylor/hardy) for the bundle management.

