
.PHONY: test

test: 
	./test_vcl.sh test/site-up.vtc site.vcl
	./test_vcl.sh test/counter-not-cached.vtc site.vcl
