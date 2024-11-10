## Check listening ports

> #### sudo ss -lutnp

The command above check which the process is listening each port.

- l: Listening
- u: UDP connections
- t: TCP connection
- n: Numeric
- p: Which process

### Output

> Netid  State   Recv-Q  Send-Q                               Local Address:Port         Peer Address:Port       Process                                          
> tcp    LISTEN  0       4096                                       0.0.0.0:5355              0.0.0.0:*           users:(("systemd-resolve",pid=882,fd=11))