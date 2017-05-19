# node-sync-util

Docker container for internally synchronizing two directories. Useful for moving files between volumes. Makes use of [sync-files](https://www.npmjs.com/package/sync-files) and [concurrently](https://www.npmjs.com/package/concurrently).

This is an adequate example of how to perform sync with NodeJS, but if you need this please seriously consider using [cweagans/docker-bg-sync](https://github.com/cweagans/docker-bg-sync) instead. His container beats this one by about 50MB and uses better tools.

## Use

```sh
docker run -td -v dir1:/sync1 -v dir2:/sync2 emcniece/node-sync-util
```

docker run -td -v /Users/emcniece/Code/docker/rsync-util/dir1:/sync1 -v /Users/emcniece/Code/docker/rsync-util/dir2:/sync2 emcniece/node-sync-util