# libutils Dockerfile (wut)

The image `wiiuwut/libutils` on [Docker Hub](https://hub.docker.com/r/wiiuwut/libutils/) provides a prebuilt library in the `/artifacts` directory. Copy it into your WUT_ROOT folder.  

Example:  
```
COPY --from=wiiuwut/libutils:0.1 /artifacts $WUT_ROOT
```
