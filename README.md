batch-merge-image-pairs
=======================

<img src="http://niftyhedgehog.com/batch-merge-image-pairs/images/final_gif.gif">

## Overview
The batch-merge-image-pairs function copies the visible image from source1/ and merges it with the corresponding image in source2/. The source2/ image is overwritten by the merged image. Inspiration for this function came from a desire to create a side-by-side GIF animation. 

The demo GIF features musician, James Brown, doing his signature split dance move. The other individual is a flexible friend, FSCJ, who found a way to merge the "Godfather of Soul" with the sport of curling.

## Usage
```
user@host:~$ gimp -i -b '(batch-merge-image-pairs "source1/*.xcf" "source2/*.xcf")' -b '(gimp-quit 0)'
```

## Procedure
1. Place "batch-merge-image-pairs.scm" in the ~/.gimp-x.x/scripts/ directory
2. Ensure that source1/ and source2/ directories contain the same number of images with an identical naming convention
3. Use GIMP's GAP video plugin to preconfigure image sizes and offsets
4. Run batch-merge-image-pairs GIMP function 
5. Save the resulting merged image frames as an animated GIF (Video->Frames-to-Image...)
6. Profit!!
