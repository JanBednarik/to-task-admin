# Admin task

Script `install.sh`:

* installs nginx
* copies `public` dir to `/var/www/public`
* configures default server to serve public dir using `site.conf`
* runs nginx server

## Testing with Docker

1. Run: 
```
$ docker run -p 8080:80 -it --rm -v `pwd`:/src debian bash
```
2. Inside container run: `# cd /src && bash install.sh`
3. When script finishes, open: http://localhost:8080
