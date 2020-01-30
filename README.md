bunker.org.ua
=============

Jekyll-powered static site `bunker.org.ua`. That's it.

Work in progress
----------------

```sh
for f in `git ls-files`; do d=`git log -1 --pretty=format:%cI $f`; touch -d $d $f; done
```

```sh
for f in `find . -type f -name '*.md'`; do d=`git log -1 --pretty=format:%ci $f`; sed "s/^mtime:.*$/mtime: $d/" -i $f; done
```
