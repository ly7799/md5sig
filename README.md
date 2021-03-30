#  MD5 Signature verification
TCP: MD5 Signature Option support (RFC 2385) check program in user space
## Compile
- modifying the compilation options of Makefile.in

- execute `make client` to generate the client

- execute `make server` to generate the server.

## Usage

- `./server` to listen tcp

- `./client 127.0.0.1` to send messages

## NOTE

in Linux can execute `tcpdump -i lo -vvv` to Get TCP packets

