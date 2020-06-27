# mkp224o
Tor v3 Vanity Addresses Generator

To generate private keys, launch the docker container:

`docker run -tid -v `pwd`/tor:/root/tor swapswopio/mkp224o:latest ./mkp224o -d /root/tor/ -n 2 -B addrss`


## ./mkp224o -h
```
Usage: ./mkp224o filter [filter...] [options]
       ./mkp224o -f filterfile [options]
Options:
	-h  - print help to stdout and quit
	-f  - specify filter file which contains filters separated by newlines
	-D  - deduplicate filters
	-q  - do not print diagnostic output to stderr
	-x  - do not print onion names
	-v  - print more diagnostic data
	-o filename  - output onion names to specified file (append)
	-O filename  - output onion names to specified file (overwrite)
	-F  - include directory names in onion names output
	-d dirname  - output directory
	-t numthreads  - specify number of threads to utilise (default - CPU core count or 1)
	-j numthreads  - same as -t
	-n numkeys  - specify number of keys (default - 0 - unlimited)
	-N numwords  - specify number of words per key (default - 1)
	-z  - use faster key generation method; this is now default
	-Z  - use slower key generation method
	-B  - use batching key generation method (>10x faster than -z, experimental)
	-s  - print statistics each 10 seconds
	-S t  - print statistics every specified ammount of seconds
	-T  - do not reset statistics counters when printing
	-y  - output generated keys in YAML format instead of dumping them to filesystem
	-Y [filename [host.onion]]  - parse YAML encoded input and extract key(s) to filesystem
	--rawyaml  - raw (unprefixed) public/secret keys for -y/-Y (may be useful for tor controller API)
	-p passphrase  - use passphrase to initialize the random seed with
	-P  - same as -p, but takes passphrase from PASSPHRASE environment variable
```