batch-merge-image-pairs
=======================
GIMP function to create image frames for a side-by-side GIF

The batch-merge-image-pairs function copies the visible image from source1/ and merges it with the corresponding image in source2/. The source2/ image is overwritten by the merged image.

Inspiration for this function came from a need to create a side-by-side GIF.
- source1/ and source2/ contain the same number of images with identical naming convention.
- Image sizes and offsets were pre-configured using Gimp's GAP video plugin.
- The resulting merged image frames can be saved as an animated GIF (Video->Frames-to-Image...)
- Profit.

USAGE:
gimp -i -b '(batch-merge-image-pairs "source1/*.xcf" "source2/*.xcf")' -b '(gimp-quit 0)'
