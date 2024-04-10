# deb-mirror

Docker container to mirror the latest two versions of Debian and Ubuntu LTS

## Running

Setup a large volume at `/opt` and run this following:
```bash
docker run -d -v /opt/deb-mirror:/mirror ghcr.io/albal/deb-mirror:main
```
