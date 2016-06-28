sub vcl_fetch {
  # cache everything for 5 minutes, ignoring any cache headers
  if(req.url == "/counter") {
	set beresp.ttl = 0s;
  }
}
