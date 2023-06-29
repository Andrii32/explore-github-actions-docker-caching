

[Cache storage backends ](https://docs.docker.com/build/cache/backends/)
[GitHub Actions cache (gha)](https://docs.docker.com/build/cache/backends/gha/)
[gha scopes](https://docs.docker.com/build/cache/backends/gha/#scope)

[Cleanup branch caches job example](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows#force-deleting-cache-entries)

[Matching a cache key](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows#matching-a-cache-key)


Comparing to `local`
*  `gha` seems to be faster on restoring, but slover on initial run (not sure about slower).
* `local` requires cache moving/cleaning step.
* `gha` cache misses `key`, `restore-keys` options. (There is `scope`, not sure it is the same https://docs.docker.com/build/cache/backends/gha/#scope)

TODO: check `type=min` `type=max` differences