# h3-swift
Swift bindings to H3: Hexagonal Hierarchical Geospatial Indexing System

WIP: Currently adapting distance.c to understand the basics of linking
a C library as a simple hello world, exposeable as a Framework.

Updating to the latest snapshot of h3, leaves h3api.h unconfigured 
without running `cmake .` first. The default settings still have XCode
building unnecessary app code, but disabling some of the features in
CMakeLists.txt manually seems like it might get to a clean build.
