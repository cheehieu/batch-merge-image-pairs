batch-merge-image-pairs
=======================

<img src="images/final_gif.gif">

## Overview
The batch-merge-image-pairs function copies the visible image from source1/ and merges it with the corresponding image in source2/. The source2/ image is overwritten by the merged image. Inspiration for this function came from a desire to create a side-by-side GIF animation. 
The demo GIF features musician, James Brown, doing his signature split dance move. The other individual is a flexible friend, FSCJ, who found a way to merge the "Godfather of Soul" with the sport of curling.

## Usage
```user@host:~$ gimp -i -b '(batch-merge-image-pairs "source1/*.xcf" "source2/*.xcf")' -b '(gimp-quit 0)'```

## Procedure
* batch-merge-image-pairs.scm should be placed in the ~/.gimp-x.x/scripts/ directory
* source1/ and source2/ contain the same number of images with identical naming convention
* Image sizes and offsets were pre-configured using Gimp's GAP video plugin
* The resulting merged image frames can be saved as an animated GIF (Video->Frames-to-Image...)
* Profit!!
