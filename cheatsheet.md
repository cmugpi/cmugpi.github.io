Regenerate site and test:

```
./jekyll_serve.sh
```

Copy to server:

```
scp -r _site/* andrewid@unix.qatar.cmu.edu:/afs/qatar.cmu.edu/course/07/131/www
```

Cannot connect to docker daemon?

```
systemctl start docker
```
