import nimPNG
import os
import strformat

proc main() =
  let args = commandLineParams()
  if args.len == 0:
    echo "png2gpl [source]"
    return

  let outputName = paramStr(1).splitFile().name
  var outputFile = open(outputName & ".gpl", fmWrite)

  outputFile.writeLine("GIMP Palatte")
  outputFile.writeLine(fmt"Name: {outputName}")
  outputFile.writeLine("#")

  var colorIndex = 0
  let png = loadPNG24(paramStr(1))
  let pixels = cast[seq[uint8]](png.data)
  for i in countup(0, pixels.len - 1, 3):
    let r = pixels[i]
    let g = pixels[i + 1]
    let b = pixels[i + 2]
    outputFile.writeLine(fmt"{r} {g} {b} Index {colorIndex}")
    colorIndex += 1
    
  outputFile.close()
  echo "Palette extraction completed."

main()