# Package

version       = "0.1.0"
author        = "Andie Nare"
description   = "Command-line tool to convert png to gpl"
license       = "MIT"
srcDir        = "src"
bin           = @["png2gpl"]


# Dependencies

requires "nim >= 1.2.6"
requires "nimPNG >= 0.3.1"