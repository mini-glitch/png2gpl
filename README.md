# png2gpl
Simple command-line tool to convert a png into a GIMP Palette (.gpl) file, for use with [Nico](https://github.com/ftsf/nico).

# Building
Run `nimble build`.

# Usage
Pass it the path to a .png and it will generate a .gpl of the same name in the running directory.

This tool operates under the assumption that each pixel in the image is a new palette color.