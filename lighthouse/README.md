# Lighthouse Docker Images

There are two images here: `feature` and `master`. These two images exist
separately to reduce the compile time when a feature branch updates.

Presently, the `master` image pulls the master branch of sigp/lighthouse and
compiles it's binaries. The `feature` branch then builds atop of this image and
uses git to checkout the feature branch and rebuild the binaries.

The net result is that each time you rebuild the  `feature` image, you only
need to compile the delta between the master branch and it, instead of
recompiling the whole project again each time.
