# README

## Run Docker
`${PWD}/src` Host directory mount to `/solidity/source` Container directory
```
 docker run -d -v ${PWD}/src:/solidity//source -t kaipark/lll-docker
```
