# glide-install

Using [glide](https://github.com/Masterminds/glide) to install your Go
dependencies.

**note** This step is now using a newer version of glide which does not
include `$GOPATH` management. If you still need this, then you need to lock the
version of the step to `1.0.0`.

# Example

```yaml
build:
    steps:
         - glide-install
```

# License

The MIT License (MIT)
