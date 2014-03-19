;The batch-merge-image-pairs function copies the visible image from source1/ and merges 
;it with the corresponding image in source2/. The source2/ image is overwritten by the 
;merged image.

;Inspiration for this function came from a need to create a side-by-side GIF.
;source1/ and source2/ contain the same number of images with identical naming convention.
;Image sizes and offsets were pre-configured using Gimp's GAP video plugin.
;The resulting merged image frames can be saved as an animated GIF (Video->Frames-to-Image...)
;Profit.

;USAGE:
;gimp -i -b '(batch-merge-image-pairs "source1/*.xcf" "source2/*.xcf")' -b '(gimp-quit 0)'

(define (batch-merge-image-pairs pattern1 pattern2)
	(let* ( (filelist1 (cadr (file-glob pattern1 1)))
		(filelist2 (cadr (file-glob pattern2 1))))
  		(while (and (not (null? filelist1)) (not (null? filelist2)))
         	(let* ( (filename1 (car filelist1))
			(filename2 (car filelist2))
			(image1 (car (gimp-file-load RUN-NONINTERACTIVE filename1 filename1)))
			(image2 (car (gimp-file-load RUN-NONINTERACTIVE filename2 filename2)))
			(drawable1 (car (gimp-image-get-active-layer image1)))
			(drawable2 (car (gimp-image-get-active-layer image2)))
			(merged_layer (car (gimp-layer-new-from-visible
                                                  image1 image2 "new-layer"))))
                        (gimp-image-add-layer image2 merged_layer -1)
;	      	(gimp-file-save RUN-NONINTERACTIVE image1 drawable1 filename1 filename1)
		(gimp-file-save RUN-NONINTERACTIVE image2 drawable2 filename2 filename2)
		(gimp-image-delete image1)
		(gimp-image-delete image2))
	(set! filelist1 (cdr filelist1))
	(set! filelist2 (cdr filelist2)))))
