; BIND reverse data file for empty rfc1918 zone
; DO NOT EDIT THIS FILE - it is used for multiple zones.
; Instead, copy it, edit named.conf, and use that copy.
;
$TTL	86400
@	IN	SOA	ns.daw05. root.localhost. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
@			IN	NS	ns.daw05.
ns			IN	A	192.168.3.205
debian8			IN	A	192.168.3.205
sara			IN	A	192.168.3.205
www.a05.daw.com		IN	CNAME	debian8.a05.daw.com

;zona para Susana
susana.a05.daw.com	IN	NS		ns.susana.a05.daw.com
ns.susana.a05.daw.com	IN	A		192.168.3.203

;Zona para Manuel
manuel.a05.daw.com	IN	NS		ns.manuel.a05.daw.com
ns.manuel.a05.daw.com	IN	A		192.168.3.202


