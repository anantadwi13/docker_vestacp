# VestaCP Docker

Usage
```bash
docker run -dit --restart=always --hostname=hostname.com \
    -p 25:25 -p 465:465 -p 110:110 -p 143:143 -p 783:783 -p 993:993 -p 995:995 \
    -p YOUR_IP:53:53/tcp -p YOUR_IP:53:53/udp \
    -p 80:80 -p 443:443 -p 8083:8083 -p 8080:8080 \
    --name=vestacp anantadwi13/vestacp
```
