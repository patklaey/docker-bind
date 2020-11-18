;
; Zone file for patklaey.ch
;
; The full zone file
;
$TTL 1H
@       IN      SOA     ns.patklaey.ch. pat@247.ch. (
                        199802151       ; serial, todays date + todays serial #
                        4H              ; refresh, seconds
                        2H              ; retry, seconds
                        4W              ; expire, seconds
                        1D )            ; minimum, seconds
;
                NS	ns              ; Inet Address of name server
		A	your-ip-here
;
;localhost       A	127.0.0.1
ns              A	your-ip-here
www		A	your-ip-here
images		CNAME	www
;images-old	CNAME	www
blog		CNAME	www
wiki		CNAME	www
;webdav		CNAME	www
cloud		CNAME	www
;management	CNAME	www
zermatt-api	CNAME	www
zermatt		CNAME	www
brandi		CNAME	www
brandi-api	CNAME	www
monitoring	CNAME	stats.uptimerobot.com.
