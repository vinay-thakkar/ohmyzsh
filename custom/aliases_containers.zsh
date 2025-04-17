# https://blog.jdriven.com/2022/07/running-oracle-xe-with-testcontainers-on-apple-silicon/
# export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"
# export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock

# http://www.dest-unreach.org/socat/doc/README
# 
# socat is a relay for bidirectional data transfer between two independent data
# channels. Each of these data channels may be a file, pipe, device (serial line
# etc. or a pseudo terminal), a socket (UNIX, IP4, IP6 - raw, UDP, TCP), an
# SSL socket, proxy CONNECT connection, a file descriptor (stdin etc.), the GNU
# line editor (readline), a program, or a combination of two of these. 
# 
# socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock
# export DOCKER_HOST=tcp://127.0.0.1:2375