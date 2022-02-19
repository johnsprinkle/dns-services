# dns-services

### About
#### This is a simple [Docker Compose](https://docs.docker.com/compose/) project that starts up an ad-blocking, recursive, caching DNS resolution solution.  It leverages [Unbound](https://www.nlnetlabs.nl/projects/unbound/about/) and [Pi-hole](https://pi-hole.net/).

### Quick Start

1) Run `./start.sh` to start the services.  This results in a `pihole` instance listening on port `53`, forwarding queries to an `unbound` instance.
