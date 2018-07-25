# README

[![](https://images.microbadger.com/badges/image/kaipark/lll-docker.svg)](https://microbadger.com/images/kaipark/lll-docker "LLL Docker Images")
[![](https://images.microbadger.com/badges/version/kaipark/lll-docker.svg)](https://microbadger.com/images/kaipark/lll-docker "LLL Docker Images")

## Run Docker
`${PWD}/src` Host directory mount to `/solidity/source` Container directory
```
 docker run -d -v ${PWD}/src:/solidity/source -t kaipark/lll-docker
 docker exec -it {CONTAINER_HASH} /bin/bash
```

## Donate
ETH : 0x5debb97a6Cc1Fdf686a3C6aA804a623a21deD73c
