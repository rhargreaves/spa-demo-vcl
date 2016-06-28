sub vcl_fetch {
  if(req.url == "/counter") {
	set beresp.ttl = 0s;
  }
}
