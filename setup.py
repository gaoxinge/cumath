from distutils.core import setup, Extension

extension = Extension(
    name="cumath",
    sources=["pycumath.c"],
    include_dirs=["/usr/local/cuda/include"],
    library_dirs=["/usr/local/cuda/lib64"],
    libraries=["cuda", "cudart", "stdc++"],
    extra_objects=["cumath.a"]
)

setup(
    name="cumath",
    version="0.0.1",
    ext_modules=[extension]
)
