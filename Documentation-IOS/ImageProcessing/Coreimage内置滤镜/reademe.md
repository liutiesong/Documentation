# Coreimage内置滤镜

- 打印系统内置滤镜

```
        //获得系统内置滤镜名称，并将滤镜名称，放置在数组中
        let builtInFilters = CIFilter.filterNames(inCategory: kCICategoryBuiltIn);
        //便利所有滤镜
        for filter in builtInFilters
        {
            //获得对应滤镜
            let filter = CIFilter(name: filter as String);
            //获得滤镜所有的属性
            let filterAttributes = filter?.attributes;
            //打印滤镜信息
            print("滤镜名称:\(filter)");
            print("对应属性：\(filterAttributes)");
            print("_______________________________________________________________________________________________________________")
        }
```

- 打印所有滤镜及属性信息：

```
滤镜名称:Optional(<CIAccordionFoldTransition: inputImage=nil inputTargetImage=nil inputBottomHeight=0 inputNumberOfFolds=3 inputFoldShadowAmount=0.1 inputTime=0>)
对应属性：Optional(["CIAttributeFilterDisplayName": Accordion Fold Transition, "CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterCategories": <__NSArrayI 0x60c000452ed0>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputFoldShadowAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.1";
    CIAttributeDisplayName = FoldShadowAmount;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputNumberOfFolds": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 3;
    CIAttributeDisplayName = NumberOfFolds;
    CIAttributeMax = 50;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The duration of the effect.";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CIAccordionFoldTransition, "inputBottomHeight": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = BottomHeight;
    CIAttributeMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAccordionFoldTransition])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAdditionCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Addition, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIAdditionCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAdditionCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x60800009a4a0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAffineClamp: inputImage=nil inputTransform=CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Affine Clamp, "inputTransform": {
    CIAttributeClass = NSValue;
    CIAttributeDefault = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
    CIAttributeDescription = "The transform to apply to the image.";
    CIAttributeDisplayName = Transform;
    CIAttributeIdentity = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIAffineClamp, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAffineClamp, "CIAttributeFilterCategories": <__NSArrayI 0x60800004e400>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAffineTile: inputImage=nil inputTransform=CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Affine Tile, "inputTransform": {
    CIAttributeClass = NSValue;
    CIAttributeDefault = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
    CIAttributeDescription = "The transform to apply to the image.";
    CIAttributeDisplayName = Transform;
    CIAttributeIdentity = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIAffineTile, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAffineTile, "CIAttributeFilterCategories": <__NSArrayI 0x60800004e6d0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAffineTransform: inputImage=nil inputTransform=CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Affine Transform, "inputTransform": {
    CIAttributeClass = NSValue;
    CIAttributeDefault = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
    CIAttributeDescription = "A transform to apply to the image.";
    CIAttributeDisplayName = Transform;
    CIAttributeIdentity = "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}";
    CIAttributeType = CIAttributeTypeTransform;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIAffineTransform, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAffineTransform, "CIAttributeFilterCategories": <__NSArrayI 0x60c000452ff0>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaAverage: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Area Average, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaAverage, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaAverage, "CIAttributeFilterCategories": <__NSArrayI 0x60000004d380>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaHistogram: inputImage=nil inputExtent=[0 0 640 80] inputScale=1 inputCount=64>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Area Histogram, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.";
    CIAttributeDisplayName = Scale;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 64;
    CIAttributeDescription = "The number of bins for the histogram. This value will determine the width of the output image.";
    CIAttributeDisplayName = Count;
    CIAttributeMax = 2048;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 10;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image whose histogram you want to calculate.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaHistogram, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaHistogram, "CIAttributeFilterCategories": <__NSArrayI 0x60400004b010>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaMaximum: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Area Maximum, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaMaximum, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMaximum, "CIAttributeFilterCategories": <__NSArrayI 0x60800004eac0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaMaximumAlpha: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Area Maximum Alpha, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaMaximumAlpha, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMaximumAlpha, "CIAttributeFilterCategories": <__NSArrayI 0x60800004eee0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaMinimum: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Area Minimum, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaMinimum, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMinimum, "CIAttributeFilterCategories": <__NSArrayI 0x60800004f300>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaMinimumAlpha: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Area Minimum Alpha, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIAreaMinimumAlpha, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMinimumAlpha, "CIAttributeFilterCategories": <__NSArrayI 0x60000004d8c0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAreaMinMaxRed: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Area Min and Max Red, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIAreaMinMaxRed, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMinMaxRed, "CIAttributeFilterCategories": <__NSArrayI 0x60000004dcb0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAttributedTextImageGenerator: inputText=nil inputScaleFactor=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Attributed Text Image Generator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAttributedTextImageGenerator, "inputScaleFactor": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = "Scale Factor";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 4;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIAttributedTextImageGenerator, "inputText": {
    CIAttributeClass = NSAttributedString;
    CIAttributeDisplayName = Text;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60000004dfb0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIAztecCodeGenerator: inputMessage=nil inputCorrectionLevel=23 inputLayers=nil inputCompactStyle=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Aztec Code Generator, "inputCorrectionLevel": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 23;
    CIAttributeDescription = "Aztec error correction value between 5 and 95";
    CIAttributeDisplayName = CorrectionLevel;
    CIAttributeMax = 95;
    CIAttributeMin = 5;
    CIAttributeSliderMax = 95;
    CIAttributeSliderMin = 5;
}, "inputLayers": {
    CIAttributeClass = NSNumber;
    CIAttributeDescription = "Aztec layers value between 1 and 32. Set to nil for automatic.";
    CIAttributeDisplayName = Layers;
    CIAttributeMax = 32;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 32;
    CIAttributeSliderMin = 1;
}, "inputMessage": {
    CIAttributeClass = NSData;
    CIAttributeDisplayName = Message;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CIAztecCodeGenerator, "inputCompactStyle": {
    CIAttributeClass = NSNumber;
    CIAttributeDescription = "Aztec force compact style @YES or @NO. Set to nil for automatic.";
    CIAttributeDisplayName = CompactStyle;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAztecCodeGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x60000004e5e0>(
CICategoryGenerator,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBarcodeGenerator: inputBarcodeDescriptor=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Barcode Generator, "inputBarcodeDescriptor": {
    CIAttributeClass = CIBarcodeDescriptor;
    CIAttributeDisplayName = BarcodeDescriptor;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIBarcodeGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBarcodeGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x60c000453650>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBarsSwipeTransition: inputImage=nil inputTargetImage=nil inputAngle=3.141592653589793 inputWidth=30 inputBarOffset=10 inputTime=0>)
对应属性：Optional(["CIAttributeFilterDisplayName": Bars Swipe Transition, "CIAttributeFilterAvailable_iOS": 6, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "3.141592653589793";
    CIAttributeDescription = "The angle (in radians) of the bars.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "inputBarOffset": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The offset of one bar with respect to another";
    CIAttributeDisplayName = "Bar Offset";
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIBarsSwipeTransition, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 30;
    CIAttributeDescription = "The width of each bar.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 2;
    CIAttributeSliderMax = 300;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBarsSwipeTransition, "CIAttributeFilterCategories": <__NSArrayI 0x60800004f510>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBicubicScaleTransform: inputImage=nil inputScale=1 inputAspectRatio=1 inputB=0 inputC=0.75>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Bicubic Scale Transform, "CIAttributeFilterCategories": <__NSArrayI 0x604000263d80>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = "0.05";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputAspectRatio": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The additional horizontal scaling factor to use on the image.";
    CIAttributeDisplayName = "Aspect Ratio";
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = "0.5";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputC": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.75";
    CIAttributeDescription = "Specifies the value of C to use for the cubic resampling function.";
    CIAttributeDisplayName = C;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIBicubicScaleTransform, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBicubicScaleTransform, "inputB": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "Specifies the value of B to use for the cubic resampling function.";
    CIAttributeDisplayName = B;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBlendWithAlphaMask: inputImage=nil inputBackgroundImage=nil inputMaskImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Blend With Alpha Mask, "CIAttributeFilterAvailable_Mac": 10.9, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIBlendWithAlphaMask, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A masking image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithAlphaMask, "CIAttributeFilterCategories": <__NSArrayI 0x60c000453d70>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBlendWithBlueMask: inputImage=nil inputBackgroundImage=nil inputMaskImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Blend With Blue Mask, "CIAttributeFilterAvailable_Mac": 10.13, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIBlendWithBlueMask, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A masking image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithBlueMask, "CIAttributeFilterCategories": <__NSArrayI 0x60000004ea30>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBlendWithMask: inputImage=nil inputBackgroundImage=nil inputMaskImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Blend With Mask, "CIAttributeFilterAvailable_Mac": 10.4, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIBlendWithMask, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithMask, "CIAttributeFilterCategories": <__NSArrayI 0x60000004eb20>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBlendWithRedMask: inputImage=nil inputBackgroundImage=nil inputMaskImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Blend With Red Mask, "CIAttributeFilterAvailable_Mac": 10.13, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIBlendWithRedMask, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A masking image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithRedMask, "CIAttributeFilterCategories": <__NSArrayI 0x60800004fa80>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBloom: inputImage=nil inputRadius=10 inputIntensity=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Bloom, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIBloom, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBloom, "CIAttributeFilterCategories": <__NSArrayI 0x60400004baf0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBokehBlur: inputImage=nil inputRadius=20 inputRingAmount=0 inputRingSize=0.1 inputSoftness=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Bokeh Blur, "inputRingSize": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.1";
    CIAttributeDescription = "The size of extra emphasis at the ring of the bokeh";
    CIAttributeDisplayName = "Ring Size";
    CIAttributeMax = "0.2";
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.2";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputSoftness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Softness;
    CIAttributeMax = 10;
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.4";
    CIAttributeSliderMin = "0.25";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 20;
    CIAttributeDescription = "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.";
    CIAttributeDisplayName = Radius;
    CIAttributeMax = 500;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputRingAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The amount of extra emphasis at the ring of the bokeh.";
    CIAttributeDisplayName = "Ring Amount";
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIBokehBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBokehBlur, "CIAttributeFilterCategories": <__NSArrayI 0x60400004bf10>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBoxBlur: inputImage=nil inputRadius=10>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Box Blur, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIBoxBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBoxBlur, "CIAttributeFilterCategories": <__NSArrayI 0x60000004ef10>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBumpDistortion: inputImage=nil inputCenter=[150 150] inputRadius=300 inputScale=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Bump Distortion, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump; negative values create an inward bump.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 600;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIBumpDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBumpDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x60c0004540d0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIBumpDistortionLinear: inputImage=nil inputCenter=[150 150] inputRadius=300 inputAngle=0 inputScale=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Bump Distortion Linear, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The scale of the effect.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 1;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the line around which the distortion occurs.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 600;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIBumpDistortionLinear, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBumpDistortionLinear, "CIAttributeFilterCategories": <__NSArrayI 0x60000004f690>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICheckerboardGenerator: inputCenter=[150 150] inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputWidth=80 inputSharpness=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Checkerboard, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICheckerboardGenerator, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color to use for the first set of squares.";
    CIAttributeDisplayName = "Color 1";
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICheckerboardGenerator, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 80;
    CIAttributeDescription = "The width of the squares in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color to use for the second set of squares.";
    CIAttributeDisplayName = "Color 2";
}, "CIAttributeFilterCategories": <__NSArrayI 0x60400004c3c0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICircleSplashDistortion: inputImage=nil inputCenter=[150 150] inputRadius=150>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Circle Splash Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 150;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICircleSplashDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircleSplashDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x60800004fe40>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICircularScreen: inputImage=nil inputCenter=[150 150] inputWidth=6 inputSharpness=0.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Circular Screen, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDescription = "The sharpness of the circles. The larger the value, the sharper the circles.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the circular screen pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICircularScreen, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance between each circle in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircularScreen, "CIAttributeFilterCategories": <__NSArrayI 0x60000004f9c0>(
CICategoryHalftoneEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICircularWrap: inputImage=nil inputCenter=[150 150] inputRadius=150 inputAngle=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Circular Wrap Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the effect.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 150;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 600;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CICircularWrap, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircularWrap, "CIAttributeFilterCategories": <__NSArrayI 0x608000050260>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIClamp: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Clamp, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that defines the extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.12, "CIAttributeFilterName": CIClamp, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIClamp, "CIAttributeFilterCategories": <__NSArrayI 0x608000050620>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICMYKHalftone: inputImage=nil inputCenter=[150 150] inputWidth=6 inputAngle=0 inputSharpness=0.7 inputGCR=1 inputUCR=0.5>)
对应属性：Optional(["inputGCR": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The gray component replacement value. The value can vary from 0.0 (none) to 1.0.";
    CIAttributeDisplayName = "Gray Component Replacement";
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
    CIUIParameterSet = CIUISetIntermediate;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICMYKHalftone, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance between dots in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 6;
    CIAttributeMin = "-2";
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
    CIUIParameterSet = CIUISetBasic;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICMYKHalftone, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDescription = "The sharpness of the pattern. The larger the value, the sharper the pattern.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
    CIUIParameterSet = CIUISetBasic;
}, "CIAttributeFilterDisplayName": CMYK Halftone, "CIAttributeFilterAvailable_iOS": 9, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the halftone pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputUCR": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The under color removal value. The value can vary from 0.0 to 1.0. ";
    CIAttributeDisplayName = "Under Color Removal";
    CIAttributeIdentity = "0.5";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
    CIUIParameterSet = CIUISetIntermediate;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60400004c870>(
CICategoryHalftoneEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICode128BarcodeGenerator: inputMessage=nil inputQuietSpace=7 inputBarcodeHeight=32>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Code128 Barcode Generator, "inputBarcodeHeight": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 32;
    CIAttributeDisplayName = BarcodeHeight;
    CIAttributeMax = 500;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputMessage": {
    CIAttributeClass = NSData;
    CIAttributeDisplayName = Message;
}, "inputQuietSpace": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 7;
    CIAttributeDisplayName = QuietSpace;
    CIAttributeMax = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 20;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CICode128BarcodeGenerator, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICode128BarcodeGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x608000050da0>(
CICategoryGenerator,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorBlendMode: inputVersion=1 inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIColorBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066ba00>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorBurnBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Burn Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIColorBurnBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorBurnBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066bd80>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorClamp: inputImage=nil inputMinComponents=[0 0 0 0] inputMaxComponents=[1 1 1 1]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Color Clamp, "inputMinComponents": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0]";
    CIAttributeDescription = "Lower clamping values";
    CIAttributeDisplayName = MinComponents;
}, "inputMaxComponents": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[1 1 1 1]";
    CIAttributeDescription = "Higher clamping values";
    CIAttributeDisplayName = MaxComponents;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIColorClamp, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorClamp, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066c0c0>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorControls: inputImage=nil inputSaturation=1 inputBrightness=0 inputContrast=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Controls, "CIAttributeFilterAvailable_Mac": 10.4, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputContrast": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The amount of contrast to apply. The larger the value, the more contrast in the resulting image.";
    CIAttributeDisplayName = Contrast;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 4;
    CIAttributeSliderMin = "0.25";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputSaturation": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The amount of saturation to apply. The larger the value, the more saturated the result.";
    CIAttributeDisplayName = Saturation;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CIColorControls, "inputBrightness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The amount of brightness to apply. The larger the value, the brighter the result.";
    CIAttributeDisplayName = Brightness;
    CIAttributeIdentity = 0;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorControls, "CIAttributeFilterCategories": <__NSArrayI 0x60000026d280>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorCrossPolynomial: inputImage=nil inputRedCoefficients=[1 0 0 0 0 0 0 0 0 0] inputGreenCoefficients=[0 1 0 0 0 0 0 0 0 0] inputBlueCoefficients=[0 0 1 0 0 0 0 0 0 0]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Color Cross Polynomial, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputGreenCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0 0 0 0 0 0 0]";
    CIAttributeDescription = "Polynomial coefficients for green channel";
    CIAttributeDisplayName = GreenCoefficients;
    CIAttributeIdentity = "[0 1 0 0 0 0 0 0 0 0]";
}, "inputBlueCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 1 0 0 0 0 0 0 0]";
    CIAttributeDescription = "Polynomial coefficients for blue channel";
    CIAttributeDisplayName = BlueCoefficients;
    CIAttributeIdentity = "[0 0 1 0 0 0 0 0 0 0]";
}, "inputRedCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[1 0 0 0 0 0 0 0 0 0]";
    CIAttributeDescription = "Polynomial coefficients for red channel";
    CIAttributeDisplayName = RedCoefficients;
    CIAttributeIdentity = "[1 0 0 0 0 0 0 0 0 0]";
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIColorCrossPolynomial, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCrossPolynomial, "CIAttributeFilterCategories": <__NSArrayI 0x60000026d4c0>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorCube: inputImage=nil inputCubeDimension=2 inputCubeData=<00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Cube, "inputCubeData": {
    CIAttributeClass = NSData;
    CIAttributeDefault = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
    CIAttributeDescription = "This is a color table of floating-point RGBA cells that use premultiplied alpha. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.";
    CIAttributeDisplayName = "Cube Data";
    CIAttributeIdentity = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCubeDimension": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 2;
    CIAttributeDisplayName = "Cube Dimension";
    CIAttributeIdentity = 2;
    CIAttributeMax = 64;
    CIAttributeMin = 2;
    CIAttributeType = CIAttributeTypeCount;
}, "CIAttributeFilterName": CIColorCube, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCube, "CIAttributeFilterCategories": <__NSArrayI 0x60000026d700>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorCubesMixedWithMask: inputImage=nil inputMaskImage=nil inputCubeDimension=2 inputCube0Data=<00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f> inputCube1Data=<00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f> inputColorSpace=nil>)
对应属性：Optional(["CIAttributeFilterDisplayName": Color Cubes Mixed With Mask, "CIAttributeFilterAvailable_iOS": 11, "inputColorSpace": {
    CIAttributeClass = NSObject;
    CIAttributeDisplayName = ColorSpace;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCubesMixedWithMask, "CIAttributeFilterCategories": <__NSArrayI 0x60000026d200>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCube1Data": {
    CIAttributeClass = NSData;
    CIAttributeDefault = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
    CIAttributeDisplayName = "Cube 1 Data";
    CIAttributeIdentity = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
}, "CIAttributeFilterAvailable_Mac": 10.13, "inputCubeDimension": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 2;
    CIAttributeDisplayName = "Cube Dimension";
    CIAttributeIdentity = 2;
    CIAttributeMax = 64;
    CIAttributeMin = 2;
    CIAttributeType = CIAttributeTypeCount;
}, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A masking image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIColorCubesMixedWithMask, "inputCube0Data": {
    CIAttributeClass = NSData;
    CIAttributeDefault = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
    CIAttributeDisplayName = "Cube 0 Data";
    CIAttributeIdentity = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorCubeWithColorSpace: inputImage=nil inputCubeDimension=2 inputCubeData=<00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f> inputColorSpace=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Color Cube with ColorSpace, "inputCubeData": {
    CIAttributeClass = NSData;
    CIAttributeDefault = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
    CIAttributeDisplayName = "Cube Data";
    CIAttributeIdentity = <00000000 00000000 00000000 0000803f 0000803f 00000000 00000000 0000803f 00000000 0000803f 00000000 0000803f 0000803f 0000803f 00000000 0000803f 00000000 00000000 0000803f 0000803f 0000803f 00000000 0000803f 0000803f 00000000 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f 0000803f>;
}, "inputColorSpace": {
    CIAttributeClass = NSObject;
    CIAttributeDisplayName = ColorSpace;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCubeDimension": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 2;
    CIAttributeDisplayName = "Cube Dimension";
    CIAttributeIdentity = 2;
    CIAttributeMax = 64;
    CIAttributeMin = 2;
    CIAttributeType = CIAttributeTypeCount;
}, "CIAttributeFilterName": CIColorCubeWithColorSpace, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCubeWithColorSpace, "CIAttributeFilterCategories": <__NSArrayI 0x60000026db00>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorCurves: inputImage=nil inputCurvesData=<00000000 00000000 00000000 0000003f 0000003f 0000003f 0000803f 0000803f 0000803f> inputCurvesDomain=[0 1] inputColorSpace=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Color Curves, "CIAttributeFilterCategories": <__NSArrayI 0x60000026da00>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputCurvesDomain": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1]";
    CIAttributeDisplayName = "Curves Domain";
}, "inputCurvesData": {
    CIAttributeClass = NSData;
    CIAttributeDefault = <00000000 00000000 00000000 0000003f 0000003f 0000003f 0000803f 0000803f 0000803f>;
    CIAttributeDisplayName = CurvesData;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIColorCurves, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCurves, "inputColorSpace": {
    CIAttributeClass = NSObject;
    CIAttributeDisplayName = ColorSpace;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorDodgeBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Dodge Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIColorDodgeBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorDodgeBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066be80>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorInvert: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Invert, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIColorInvert, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorInvert, "CIAttributeFilterCategories": <__NSArrayI 0x60800026d900>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorMap: inputImage=nil inputGradientImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Color Map, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputGradientImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image data from this image transforms the source image values.";
    CIAttributeDisplayName = "Gradient Image";
    CIAttributeType = CIAttributeTypeGradient;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIColorMap, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMap, "CIAttributeFilterCategories": <__NSArrayI 0x60800026d800>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorMatrix: inputImage=nil inputRVector=[1 0 0 0] inputGVector=[0 1 0 0] inputBVector=[0 0 1 0] inputAVector=[0 0 0 1] inputBiasVector=[0 0 0 0]>)
对应属性：Optional(["CIAttributeFilterDisplayName": Color Matrix, "CIAttributeFilterAvailable_iOS": 5, "inputBVector": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 1 0]";
    CIAttributeDescription = "The amount of blue to multiply the source color values by.";
    CIAttributeDisplayName = "Blue Vector";
    CIAttributeIdentity = "[0 0 1 0]";
}, "inputBiasVector": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0]";
    CIAttributeDescription = "A vector that\U2019s added to each color component.";
    CIAttributeDisplayName = "Bias Vector";
    CIAttributeIdentity = "[0 0 0 0]";
}, "inputAVector": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 1]";
    CIAttributeDescription = "The amount of alpha to multiply the source color values by.";
    CIAttributeDisplayName = "Alpha Vector";
    CIAttributeIdentity = "[0 0 0 1]";
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRVector": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[1 0 0 0]";
    CIAttributeDescription = "The amount of red to multiply the source color values by.";
    CIAttributeDisplayName = "Red Vector";
    CIAttributeIdentity = "[1 0 0 0]";
}, "CIAttributeFilterAvailable_Mac": 10.4, "inputGVector": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0]";
    CIAttributeDescription = "The amount of green to multiply the source color values by.";
    CIAttributeDisplayName = "Green Vector";
    CIAttributeIdentity = "[0 1 0 0]";
}, "CIAttributeFilterName": CIColorMatrix, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMatrix, "CIAttributeFilterCategories": <__NSArrayI 0x60800026db40>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorMonochrome: inputImage=nil inputColor=(0.6 0.45 0.3 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputIntensity=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Color Monochrome, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.6 0.45 0.3 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The monochrome color to apply to the image.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeOpaqueColor;
}, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIColorMonochrome, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMonochrome, "CIAttributeFilterCategories": <__NSArrayI 0x60000026dc40>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorPolynomial: inputImage=nil inputRedCoefficients=[0 1 0 0] inputGreenCoefficients=[0 1 0 0] inputBlueCoefficients=[0 1 0 0] inputAlphaCoefficients=[0 1 0 0]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Color Polynomial, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputGreenCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0]";
    CIAttributeDescription = "Polynomial coefficients for green channel";
    CIAttributeDisplayName = GreenCoefficients;
    CIAttributeIdentity = "[0 1 0 0]";
}, "inputBlueCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0]";
    CIAttributeDescription = "Polynomial coefficients for blue channel";
    CIAttributeDisplayName = BlueCoefficients;
    CIAttributeIdentity = "[0 1 0 0]";
}, "inputRedCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0]";
    CIAttributeDescription = "Polynomial coefficients for red channel";
    CIAttributeDisplayName = RedCoefficients;
    CIAttributeIdentity = "[0 1 0 0]";
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIColorPolynomial, "inputAlphaCoefficients": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 1 0 0]";
    CIAttributeDescription = "Polynomial coefficients for alpha channel";
    CIAttributeDisplayName = AlphaCoefficients;
    CIAttributeIdentity = "[0 1 0 0]";
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorPolynomial, "CIAttributeFilterCategories": <__NSArrayI 0x60000026e040>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColorPosterize: inputImage=nil inputLevels=6>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Color Posterize, "inputLevels": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.";
    CIAttributeDisplayName = Levels;
    CIAttributeIdentity = 300;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 30;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIColorPosterize, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorPosterize, "CIAttributeFilterCategories": <__NSArrayI 0x604000264580>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIColumnAverage: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Column Average, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIColumnAverage, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColumnAverage, "CIAttributeFilterCategories": <__NSArrayI 0x60400004d0e0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIComicEffect: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Comic Effect, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIComicEffect, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIComicEffect, "CIAttributeFilterCategories": <__NSArrayI 0x60400004d560>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConstantColorGenerator: inputColor=(1 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Constant Color, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color to generate.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeColor;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIConstantColorGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConstantColorGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x60400004d740>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConvolution3X3: inputImage=nil inputWeights=[0 0 0 0 1 0 0 0 0] inputBias=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": 3 by 3 convolution, "inputBias": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Bias;
    CIAttributeIdentity = 0;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "inputWeights": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0 1 0 0 0 0]";
    CIAttributeDisplayName = Weights;
    CIAttributeIdentity = "[0 0 0 0 1 0 0 0 0]";
}, "CIAttributeFilterName": CIConvolution3X3, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution3X3, "CIAttributeFilterCategories": <__NSArrayI 0x608000052420>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConvolution5X5: inputImage=nil inputWeights=[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0] inputBias=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": 5 by 5 convolution, "inputBias": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Bias;
    CIAttributeIdentity = 0;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "inputWeights": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0]";
    CIAttributeDisplayName = Weights;
    CIAttributeIdentity = "[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0]";
}, "CIAttributeFilterName": CIConvolution5X5, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution5X5, "CIAttributeFilterCategories": <__NSArrayI 0x608000052d20>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConvolution7X7: inputImage=nil inputWeights=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] inputBias=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": 7 by 7 convolution, "inputBias": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Bias;
    CIAttributeIdentity = 0;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "inputWeights": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]";
    CIAttributeDisplayName = Weights;
    CIAttributeIdentity = "[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]";
}, "CIAttributeFilterName": CIConvolution7X7, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution7X7, "CIAttributeFilterCategories": <__NSArrayI 0x60c000456980>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConvolution9Horizontal: inputImage=nil inputWeights=[0 0 0 0 1 0 0 0 0] inputBias=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Horizontal 9 Convolution, "inputBias": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Bias;
    CIAttributeIdentity = 0;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "inputWeights": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0 1 0 0 0 0]";
    CIAttributeDisplayName = Weights;
    CIAttributeIdentity = "[0 0 0 0 1 0 0 0 0]";
}, "CIAttributeFilterName": CIConvolution9Horizontal, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Horizontal, "CIAttributeFilterCategories": <__NSArrayI 0x60c000458a20>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIConvolution9Vertical: inputImage=nil inputWeights=[0 0 0 0 1 0 0 0 0] inputBias=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Vertical 9 Convolution, "inputBias": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Bias;
    CIAttributeIdentity = 0;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "inputWeights": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0 1 0 0 0 0]";
    CIAttributeDisplayName = Weights;
    CIAttributeIdentity = "[0 0 0 0 1 0 0 0 0]";
}, "CIAttributeFilterName": CIConvolution9Vertical, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Vertical, "CIAttributeFilterCategories": <__NSArrayI 0x6080000535f0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICopyMachineTransition: inputImage=nil inputTargetImage=nil inputExtent=[0 0 300 300] inputColor=(0.6 1 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputTime=0 inputAngle=0 inputWidth=200 inputOpacity=1.3>)
对应属性：Optional(["inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.6 1 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color of the copier light.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeOpaqueColor;
}, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "A rectangle that defines the extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputOpacity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.3";
    CIAttributeDescription = "The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.";
    CIAttributeDisplayName = Opacity;
    CIAttributeIdentity = "1.3";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the copier light.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICopyMachineTransition, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 200;
    CIAttributeDescription = "The width of the copier light. ";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 200;
    CIAttributeMin = "0.1";
    CIAttributeSliderMax = 500;
    CIAttributeSliderMin = "0.1";
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICopyMachineTransition, "CIAttributeFilterDisplayName": Copy Machine, "CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterCategories": <__NSArrayI 0x600000054220>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICrop: inputImage=nil inputRectangle=[-8.98847e+307 -8.98847e+307 1.79769e+308 1.79769e+308]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Crop, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRectangle": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[-8.98847e+307 -8.98847e+307 1.79769e+308 1.79769e+308]";
    CIAttributeDescription = "The rectangle that specifies the crop to apply to the image.";
    CIAttributeDisplayName = Rectangle;
    CIAttributeIdentity = "[-8.98847e+307 -8.98847e+307 1.79769e+308 1.79769e+308]";
    CIAttributeType = CIAttributeTypeRectangle;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICrop, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICrop, "CIAttributeFilterCategories": <__NSArrayI 0x608000053bf0>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CICrystallize: inputImage=nil inputRadius=20 inputCenter=[150 150]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Crystallize, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 20;
    CIAttributeDescription = "The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 1;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CICrystallize, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICrystallize, "CIAttributeFilterCategories": <__NSArrayI 0x608000053f50>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDarkenBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Darken Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIDarkenBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDarkenBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026e1c0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDepthBlurEffect: inputImage=nil inputDisparityImage=nil inputAperture=0 inputLeftEyePositions=nil inputRightEyePositions=nil inputChinPositions=nil inputNosePositions=nil inputFocusRect=[-8.98847e+307 -8.98847e+307 1.79769e+308 1.79769e+308] inputLumaNoiseScale=0 inputScaleFactor=1 inputCalibrationData=nil inputAuxDataMetadata=nil>)
对应属性：Optional(["inputRightEyePositions": {
    CIAttributeClass = CIVector;
    CIAttributeDisplayName = "Right Eye Positions";
    CIAttributeType = CIAttributeTypePosition;
}, "inputCalibrationData": {
    CIAttributeClass = AVCameraCalibrationData;
    CIAttributeDisplayName = CalibrationData;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputChinPositions": {
    CIAttributeClass = CIVector;
    CIAttributeDisplayName = "Chin Positions";
    CIAttributeType = CIAttributeTypePosition;
}, "inputLeftEyePositions": {
    CIAttributeClass = CIVector;
    CIAttributeDisplayName = "Left Eye Positions";
    CIAttributeType = CIAttributeTypePosition;
}, "inputAuxDataMetadata": {
    CIAttributeClass = NSDictionary;
    CIAttributeDisplayName = AuxDataMetadata;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIDepthBlurEffect, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDepthBlurEffect, "inputAperture": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Aperture;
    CIAttributeMax = 22;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 22;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterDisplayName": Depth Blur Effect, "CIAttributeFilterAvailable_iOS": 11, "inputNosePositions": {
    CIAttributeClass = CIVector;
    CIAttributeDisplayName = "Nose Positions";
    CIAttributeType = CIAttributeTypePosition;
}, "inputLumaNoiseScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = "Luma Noise Scale";
    CIAttributeMax = "0.1";
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.1";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputScaleFactor": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = "Scale Factor";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputFocusRect": {
    CIAttributeClass = CIVector;
    CIAttributeDisplayName = "Focus Rectangle";
    CIAttributeIdentity = "[-8.98847e+307 -8.98847e+307 1.79769e+308 1.79769e+308]";
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputDisparityImage": {
    CIAttributeClass = CIImage;
    CIAttributeDisplayName = DisparityImage;
}, "CIAttributeFilterCategories": <__NSArrayI 0x608000054fd0>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDepthOfField: inputImage=nil inputPoint0=[0 300] inputPoint1=[300 300] inputSaturation=1.5 inputUnsharpMaskRadius=2.5 inputUnsharpMaskIntensity=0.5 inputRadius=6>)
对应属性：Optional(["inputUnsharpMaskIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDisplayName = "Unsharp Mask Intensity";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 30;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[300 300]";
    CIAttributeDisplayName = "Point 1";
    CIAttributeType = CIAttributeTypePosition;
}, "inputPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 300]";
    CIAttributeDisplayName = "Point 0";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.6, "CIAttributeFilterName": CIDepthOfField, "inputSaturation": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.5";
    CIAttributeDescription = "The amount to adjust the saturation.";
    CIAttributeDisplayName = Saturation;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDepthOfField, "CIAttributeFilterDisplayName": Depth of Field, "CIAttributeFilterAvailable_iOS": 9, "inputUnsharpMaskRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.5";
    CIAttributeDisplayName = "Unsharp Mask Radius";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterCategories": <__NSArrayI 0x6000000549a0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDepthToDisparity: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Depth To Disparity, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The input depth data image to convert to disparity data.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIDepthToDisparity, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDepthToDisparity, "CIAttributeFilterCategories": <__NSArrayI 0x600000054b50>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDifferenceBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Difference Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIDifferenceBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDifferenceBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60000026e1c0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDiscBlur: inputImage=nil inputRadius=8>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Disc Blur, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 8;
    CIAttributeDescription = "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIDiscBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDiscBlur, "CIAttributeFilterCategories": <__NSArrayI 0x600000055300>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDisintegrateWithMaskTransition: inputImage=nil inputTargetImage=nil inputMaskImage=nil inputTime=0 inputShadowRadius=8 inputShadowDensity=0.65 inputShadowOffset=[0 -10]>)
对应属性：Optional(["inputShadowRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 8;
    CIAttributeDescription = "The radius of the shadow created by the mask.";
    CIAttributeDisplayName = "Shadow Radius";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputShadowOffset": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 -10]";
    CIAttributeDescription = "The offset of the shadow created by the mask.";
    CIAttributeDisplayName = "Shadow Offset";
    CIAttributeIdentity = "[0 0]";
    CIAttributeType = CIAttributeTypeOffset;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIDisintegrateWithMaskTransition, "inputShadowDensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.65";
    CIAttributeDescription = "The density of the shadow created by the mask.";
    CIAttributeDisplayName = "Shadow Density";
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDisintegrateWithMaskTransition, "CIAttributeFilterDisplayName": Disintegrate With Mask, "CIAttributeFilterAvailable_iOS": 6, "inputMaskImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "An image that defines the shape to use when disintegrating from the source to the target image.";
    CIAttributeDisplayName = "Mask Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterCategories": <__NSArrayI 0x600000055990>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDisparityToDepth: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Disparity To Depth, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The input disparity data image to convert to depth data.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIDisparityToDepth, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDisparityToDepth, "CIAttributeFilterCategories": <__NSArrayI 0x608000055870>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDisplacementDistortion: inputImage=nil inputDisplacementImage=nil inputScale=50>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Displacement Distortion, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 50;
    CIAttributeDescription = "The amount of texturing of the resulting image. The larger the value, the greater the texturing.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputDisplacementImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "An image whose grayscale values will be applied to the source image.";
    CIAttributeDisplayName = "Displacement Image";
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIDisplacementDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDisplacementDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x608000055bd0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDissolveTransition: inputImage=nil inputTargetImage=nil inputTime=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Dissolve, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIDissolveTransition, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDissolveTransition, "CIAttributeFilterCategories": <__NSArrayI 0x60800026e980>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDivideBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Divide Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIDivideBlendMode, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDivideBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026e780>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDotScreen: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=6 inputSharpness=0.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Dot Screen, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDescription = "The sharpness of the pattern. The larger the value, the sharper the pattern.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the dot screen pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIDotScreen, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance between dots in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDotScreen, "CIAttributeFilterCategories": <__NSArrayI 0x6080000567d0>(
CICategoryHalftoneEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIDroste: inputImage=nil inputInsetPoint0=[200 200] inputInsetPoint1=[400 400] inputStrands=1 inputPeriodicity=1 inputRotation=0 inputZoom=1>)
对应属性：Optional(["inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputInsetPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[400 400]";
    CIAttributeDisplayName = InsetPoint1;
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.6, "CIAttributeFilterName": CIDroste, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDroste, "CIAttributeFilterDisplayName": Droste, "CIAttributeFilterAvailable_iOS": 9, "inputZoom": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Zoom;
    CIAttributeMin = "0.01";
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = "0.01";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputRotation": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDisplayName = Rotation;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputStrands": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Strands;
    CIAttributeMax = 10;
    CIAttributeMin = "-10";
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = "-2";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputPeriodicity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Periodicity;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputInsetPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[200 200]";
    CIAttributeDisplayName = InsetPoint0;
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterCategories": <__NSArrayI 0x600000055b70>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIEdgePreserveUpsampleFilter: inputImage=nil inputSmallImage=nil inputSpatialSigma=3 inputLumaSigma=0.15>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Edge Preserve Upsample Filter, "inputLumaSigma": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.15";
    CIAttributeDisplayName = "Luma Sigma";
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputSmallImage": {
    CIAttributeClass = CIImage;
    CIAttributeDisplayName = "Small Image";
}, "inputSpatialSigma": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 3;
    CIAttributeDisplayName = "Spatial Sigma";
    CIAttributeMax = 5;
    CIAttributeMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CIEdgePreserveUpsampleFilter, "CIAttributeFilterAvailable_Mac": 10.12, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdgePreserveUpsampleFilter, "CIAttributeFilterCategories": <__NSArrayI 0x60800026ef80>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIEdges: inputImage=nil inputIntensity=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Edges, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The intensity of the edges. The larger the value, the higher the intensity.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIEdges, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdges, "CIAttributeFilterCategories": <__NSArrayI 0x6080000572e0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIEdgeWork: inputImage=nil inputRadius=3>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Edge Work, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 3;
    CIAttributeDescription = "The thickness of the edges. The larger the value, the thicker the edges.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 20;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIEdgeWork, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdgeWork, "CIAttributeFilterCategories": <__NSArrayI 0x608000057190>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIEightfoldReflectedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Eightfold Reflected Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIEightfoldReflectedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEightfoldReflectedTile, "CIAttributeFilterCategories": <__NSArrayI 0x608000057ac0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIExclusionBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Exclusion Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIExclusionBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIExclusionBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026ee00>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIExposureAdjust: inputImage=nil inputEV=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Exposure Adjust, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputEV": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.";
    CIAttributeDisplayName = EV;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = "-10";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIExposureAdjust, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIExposureAdjust, "CIAttributeFilterCategories": <__NSArrayI 0x604000099be0>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIFalseColor: inputImage=nil inputColor0=(0.3 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(1 0.9 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": False Color, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0.9 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The second color to use for the color ramp.";
    CIAttributeDisplayName = "Color 2";
    CIAttributeType = CIAttributeTypeColor;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.3 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The first color to use for the color ramp.";
    CIAttributeDisplayName = "Color 1";
    CIAttributeType = CIAttributeTypeColor;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIFalseColor, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFalseColor, "CIAttributeFilterCategories": <__NSArrayI 0x60000026ec40>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIFlashTransition: inputImage=nil inputTargetImage=nil inputCenter=[150 150] inputExtent=[0 0 300 300] inputColor=(1 0.8 0.6 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputTime=0 inputMaxStriationRadius=2.58 inputStriationStrength=0.5 inputStriationContrast=1.375 inputFadeThreshold=0.85>)
对应属性：Optional(["inputStriationContrast": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.375";
    CIAttributeDescription = "The contrast of the light rays emanating from the flash.";
    CIAttributeDisplayName = "Striation Contrast";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0.8 0.6 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color of the light rays emanating from the flash.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeColor;
}, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "The extent of the flash.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIFlashTransition, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFlashTransition, "CIAttributeFilterDisplayName": Flash, "CIAttributeFilterAvailable_iOS": 6, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputMaxStriationRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.58";
    CIAttributeDescription = "The radius of the light rays emanating from the flash.";
    CIAttributeDisplayName = "Maximum Striation Radius";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputFadeThreshold": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.85";
    CIAttributeDescription = "The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.";
    CIAttributeDisplayName = "Fade Threshold";
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputStriationStrength": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The strength of the light rays emanating from the flash.";
    CIAttributeDisplayName = "Striation Strength";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterCategories": <__NSArrayI 0x600000056b30>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIFourfoldReflectedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100 inputAcuteAngle=1.570796326794897>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Fourfold Reflected Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAcuteAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.570796326794897";
    CIAttributeDescription = "The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.";
    CIAttributeDisplayName = "Acute Angle";
    CIAttributeIdentity = "1.570796326794897";
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIFourfoldReflectedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldReflectedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60400004e5b0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIFourfoldRotatedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Fourfold Rotated Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIFourfoldRotatedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldRotatedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60400004eb50>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIFourfoldTranslatedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100 inputAcuteAngle=1.570796326794897>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Fourfold Translated Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAcuteAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.570796326794897";
    CIAttributeDescription = "The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.";
    CIAttributeDisplayName = "Acute Angle";
    CIAttributeIdentity = "1.570796326794897";
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIFourfoldTranslatedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldTranslatedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60c000458e10>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGammaAdjust: inputImage=nil inputPower=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Gamma Adjust, "inputPower": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "A gamma value to use to correct image brightness. The larger the value, the darker the result.";
    CIAttributeDisplayName = Power;
    CIAttributeIdentity = 1;
    CIAttributeSliderMax = 4;
    CIAttributeSliderMin = "0.25";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGammaAdjust, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGammaAdjust, "CIAttributeFilterCategories": <__NSArrayI 0x60000026eb00>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGaussianBlur: inputImage=nil inputRadius=10>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Gaussian Blur, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGaussianBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaussianBlur, "CIAttributeFilterCategories": <__NSArrayI 0x600000057280>(
CICategoryBlur,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGaussianGradient: inputCenter=[150 150] inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 0) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputRadius=300>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Gaussian Gradient, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaussianGradient, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The first color to use in the gradient.";
    CIAttributeDisplayName = "Color 1";
    CIAttributeType = CIAttributeTypeColor;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius of the Gaussian distribution.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGaussianGradient, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 0) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The second color to use in the gradient.";
    CIAttributeDisplayName = "Color 2";
    CIAttributeType = CIAttributeTypeColor;
}, "CIAttributeFilterCategories": <__NSArrayI 0x600000057730>(
CICategoryGradient,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGlassDistortion: inputImage=nil inputTexture=nil inputCenter=[150 150] inputScale=200>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Glass Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 200;
    CIAttributeDescription = "The amount of texturing of the resulting image. The larger the value, the greater the texturing.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 500;
    CIAttributeSliderMin = "0.01";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTexture": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "A texture to apply to the source image.";
    CIAttributeDisplayName = Texture;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGlassDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlassDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x600000057fd0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGlassLozenge: inputImage=nil inputPoint0=[150 150] inputPoint1=[350 150] inputRadius=100 inputRefraction=1.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Glass Lozenge, "inputRefraction": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.7";
    CIAttributeDescription = "The refraction of the glass.";
    CIAttributeDisplayName = Refraction;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The radius of the lozenge. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[350 150]";
    CIAttributeDescription = "The x and y position that defines the center of the circle at the other end of the lozenge.";
    CIAttributeDisplayName = "Point 1";
    CIAttributeType = CIAttributeTypePosition;
}, "inputPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position that defines the center of the circle at one end of the lozenge.";
    CIAttributeDisplayName = "Point 0";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGlassLozenge, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlassLozenge, "CIAttributeFilterCategories": <__NSArrayI 0x60400004f000>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGlideReflectedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Glide Reflected Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIGlideReflectedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlideReflectedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60400004f3f0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIGloom: inputImage=nil inputRadius=10 inputIntensity=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Gloom, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIGloom, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGloom, "CIAttributeFilterCategories": <__NSArrayI 0x608000058150>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHardLightBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Hard Light Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIHardLightBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHardLightBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066d0c0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHatchedScreen: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=6 inputSharpness=0.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Hatched Screen, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDescription = "The amount of sharpening to apply.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the hatched screen pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIHatchedScreen, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance between lines in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHatchedScreen, "CIAttributeFilterCategories": <__NSArrayI 0x60c000459590>(
CICategoryHalftoneEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHeightFieldFromMask: inputImage=nil inputRadius=10>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Height Field From Mask, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The white values of the mask define those pixels that are inside the height field while the black values define those pixels that are outside. The field varies smoothly and continuously inside the mask, reaching the value 0 at the edge of the mask.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 10;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 300;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIHeightFieldFromMask, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHeightFieldFromMask, "CIAttributeFilterCategories": <__NSArrayI 0x608000058570>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHexagonalPixellate: inputImage=nil inputCenter=[150 150] inputScale=8>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Hexagonal Pixelate, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 8;
    CIAttributeDescription = "The scale determines the size of the hexagons. Larger values result in larger hexagons.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 1;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIHexagonalPixellate, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHexagonalPixellate, "CIAttributeFilterCategories": <__NSArrayI 0x608000058ae0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHighlightShadowAdjust: inputVersion=2 inputImage=nil inputRadius=0 inputShadowAmount=0 inputHighlightAmount=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Highlight and Shadow Adjust, "inputHighlightAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The amount of adjustment to the highlights of the image.";
    CIAttributeDisplayName = "Highlight Amount";
    CIAttributeIdentity = 1;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "0.3";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputShadowAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The amount of adjustment to the shadows of the image.";
    CIAttributeDisplayName = "Shadow Amount";
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "Shadow Highlight Radius";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.7, "CIAttributeFilterName": CIHighlightShadowAdjust, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHighlightShadowAdjust, "CIAttributeFilterCategories": <__NSArrayI 0x6080000590b0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHistogramDisplayFilter: inputImage=nil inputHeight=100 inputHighLimit=1 inputLowLimit=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Histogram Display, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputHighLimit": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The fraction of the right portion of the histogram image to make lighter.";
    CIAttributeDisplayName = HighLimit;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputHeight": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The height of the displayable histogram image.";
    CIAttributeDisplayName = Height;
    CIAttributeMax = 200;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputLowLimit": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The fraction of the left portion of the histogram image to make darker";
    CIAttributeDisplayName = LowLimit;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.?, "CIAttributeFilterName": CIHistogramDisplayFilter, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHistogramDisplayFilter, "CIAttributeFilterCategories": <__NSArrayI 0x60400004f5d0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHoleDistortion: inputImage=nil inputCenter=[150 150] inputRadius=150>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Hole Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 150;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = "0.1";
    CIAttributeMin = "0.01";
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = "0.01";
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIHoleDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHoleDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x6080000594d0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHueAdjust: inputImage=nil inputAngle=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Hue Adjust, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "An angle (in radians) to use to correct the hue of an image.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIHueAdjust, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHueAdjust, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066d740>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHueBlendMode: inputVersion=1 inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Hue Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIHueBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHueBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066d700>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIHueSaturationValueGradient: inputValue=1 inputRadius=300 inputSoftness=1 inputDither=1 inputColorSpace=<CGColorSpace 0x6080000ada40> (kCGColorSpaceICCBased; kCGColorSpaceModelRGB; sRGB IEC61966-2.1)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Hue/Saturation/Value Gradient, "CIAttributeFilterCategories": <__NSArrayI 0x6000000584b0>(
CICategoryGradient,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputValue": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Value;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputSoftness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Softness;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputDither": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Dither;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.12, "CIAttributeFilterName": CIHueSaturationValueGradient, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHueSaturationValueGradient, "inputColorSpace": {
    CIAttributeClass = NSObject;
    CIAttributeDefault = "<CGColorSpace 0x6080000ada40> (kCGColorSpaceICCBased; kCGColorSpaceModelRGB; sRGB IEC61966-2.1)";
    CIAttributeDescription = "The CGColorSpaceRef that the color wheel should be generated in.";
    CIAttributeDisplayName = ColorSpace;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIKaleidoscope: inputImage=nil inputCount=6 inputCenter=[150 150] inputAngle=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Kaleidoscope, "inputCount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The number of reflections in the pattern.";
    CIAttributeDisplayName = Count;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 64;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of reflection.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIKaleidoscope, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIKaleidoscope, "CIAttributeFilterCategories": <__NSArrayI 0x60c000459fe0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILabDeltaE: inputImage=nil inputImage2=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Lab ∆E, "inputImage2": {
    CIAttributeClass = CIImage;
    CIAttributeDisplayName = Image2;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CILabDeltaE, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILabDeltaE, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066d840>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILanczosScaleTransform: inputImage=nil inputScale=1 inputAspectRatio=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Lanczos Scale Transform, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = "1.5";
    CIAttributeSliderMin = "0.05";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputAspectRatio": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The additional horizontal scaling factor to use on the image.";
    CIAttributeDisplayName = "Aspect Ratio";
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = "0.5";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CILanczosScaleTransform, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILanczosScaleTransform, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045a820>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILenticularHaloGenerator: inputCenter=[150 150] inputColor=(1 0.9 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputHaloRadius=70 inputHaloWidth=87 inputHaloOverlap=0.77 inputStriationStrength=0.5 inputStriationContrast=1 inputTime=0>)
对应属性：Optional(["inputStriationContrast": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The contrast of the halo colors. Larger values are higher contrast.";
    CIAttributeDisplayName = "Striation Contrast";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0.9 0.8 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color.";
    CIAttributeDisplayName = Color;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The duration of the effect.";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputHaloRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 70;
    CIAttributeDescription = "The radius of the halo.";
    CIAttributeDisplayName = "Halo Radius";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CILenticularHaloGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILenticularHaloGenerator, "CIAttributeFilterDisplayName": Lenticular Halo, "CIAttributeFilterAvailable_iOS": 9, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the halo.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputHaloOverlap": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.77";
    CIAttributeDisplayName = "Halo Overlap";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputStriationStrength": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The intensity of the halo colors. Larger values are more intense.";
    CIAttributeDisplayName = "Striation Strength";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputHaloWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 87;
    CIAttributeDescription = "The width of the halo, from its inner radius to its outer radius.";
    CIAttributeDisplayName = "Halo Width";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 300;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterCategories": <__NSArrayI 0x600000058870>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILightenBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Lighten Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CILightenBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILightenBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026fb80>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILightTunnel: inputImage=nil inputCenter=[150 150] inputRotation=0 inputRadius=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Light Tunnel Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "Center of the light tunnel.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputRotation": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "Rotation angle of the light tunnel.";
    CIAttributeDisplayName = Rotation;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "1.570796326794897";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "Center radius of the light tunnel.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 500;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CILightTunnel, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILightTunnel, "CIAttributeFilterCategories": <__NSArrayI 0x60800005a070>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILinearBurnBlendMode: inputVersion=1 inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Linear Burn Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CILinearBurnBlendMode, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearBurnBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026fcc0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILinearDodgeBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Linear Dodge Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CILinearDodgeBlendMode, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearDodgeBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60800026f700>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILinearGradient: inputPoint0=[0 0] inputPoint1=[200 200] inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Linear Gradient, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearGradient, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The first color to use in the gradient.";
    CIAttributeDisplayName = "Color 1";
    CIAttributeType = CIAttributeTypeColor;
}, "inputPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[200 200]";
    CIAttributeDescription = "The ending position of the gradient -- where the second color begins.";
    CIAttributeDisplayName = "Point 1";
    CIAttributeType = CIAttributeTypePosition;
}, "inputPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0]";
    CIAttributeDescription = "The starting position of the gradient -- where the first color begins.";
    CIAttributeDisplayName = "Point 0";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CILinearGradient, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The second color to use in the gradient.";
    CIAttributeDisplayName = "Color 2";
    CIAttributeType = CIAttributeTypeColor;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60800005abe0>(
CICategoryGradient,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILinearToSRGBToneCurve: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Linear to sRGB Tone Curve, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CILinearToSRGBToneCurve, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearToSRGBToneCurve, "CIAttributeFilterCategories": <__NSArrayI 0x6040002653c0>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILineOverlay: inputImage=nil inputNRNoiseLevel=0.07000000000000001 inputNRSharpness=0.71 inputEdgeIntensity=1 inputThreshold=0.1 inputContrast=50>)
对应属性：Optional(["CIAttributeFilterDisplayName": Line Overlay, "CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterCategories": <__NSArrayI 0x604000050080>(
CICategoryBuiltIn,
CICategoryStillImage,
CICategoryVideo,
CICategoryStylize
)
, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputThreshold": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.1";
    CIAttributeDescription = "This value determines edge visibility. Larger values thin out the edges.";
    CIAttributeDisplayName = Threshold;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputNRSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.71";
    CIAttributeDescription = "The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.";
    CIAttributeDisplayName = "NR Sharpness";
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputNRNoiseLevel": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.07000000000000001";
    CIAttributeDescription = "The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.";
    CIAttributeDisplayName = "NR Noise Level";
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.1";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.5, "inputContrast": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 50;
    CIAttributeDescription = "The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).";
    CIAttributeDisplayName = Contrast;
    CIAttributeIdentity = 1;
    CIAttributeMin = "0.25";
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = "0.25";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CILineOverlay, "inputEdgeIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.";
    CIAttributeDisplayName = "Edge Intensity";
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILineOverlay])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILineScreen: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=6 inputSharpness=0.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Line Screen, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDescription = "The sharpness of the pattern. The larger the value, the sharper the pattern.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the line screen pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CILineScreen, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 6;
    CIAttributeDescription = "The distance between lines in the pattern.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 2;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILineScreen, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045ae20>(
CICategoryHalftoneEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CILuminosityBlendMode: inputVersion=1 inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Luminosity Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CILuminosityBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILuminosityBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60000026fe80>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMaskedVariableBlur: inputImage=nil inputMask=nil inputRadius=5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Masked Variable Blur, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 5;
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputMask": {
    CIAttributeClass = CIImage;
    CIAttributeDisplayName = Mask;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CIMaskedVariableBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaskedVariableBlur, "CIAttributeFilterCategories": <__NSArrayI 0x600000059260>(
CICategoryBlur,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMaskToAlpha: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Mask to Alpha, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIMaskToAlpha, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaskToAlpha, "CIAttributeFilterCategories": <__NSArrayI 0x604000265880>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMaximumComponent: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Maximum Component, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIMaximumComponent, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaximumComponent, "CIAttributeFilterCategories": <__NSArrayI 0x6040002659c0>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMaximumCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Maximum, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIMaximumCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaximumCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x60400009b2b0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMedianFilter: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Median, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIMedianFilter, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMedianFilter, "CIAttributeFilterCategories": <__NSArrayI 0x604000050a70>(
CICategoryBlur,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMinimumComponent: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Minimum Component, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIMinimumComponent, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMinimumComponent, "CIAttributeFilterCategories": <__NSArrayI 0x604000265c40>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMinimumCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Minimum, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIMinimumCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMinimumCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x60400009b580>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIModTransition: inputImage=nil inputTargetImage=nil inputCenter=[150 150] inputTime=0 inputAngle=2 inputRadius=150 inputCompression=300>)
对应属性：Optional(["inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 2;
    CIAttributeDescription = "The angle of the mod hole pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = "-6.283185307179586";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputCompression": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.";
    CIAttributeDisplayName = Compression;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 100;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 150;
    CIAttributeDescription = "The radius of the undistorted holes in the pattern.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIModTransition, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIModTransition, "CIAttributeFilterDisplayName": Mod, "CIAttributeFilterAvailable_iOS": 6, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterCategories": <__NSArrayI 0x6040000514f0>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMorphologyGradient: inputImage=nil inputRadius=5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Morphology Gradient, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 5;
    CIAttributeDescription = "The desired radius of the circular morphological operation to the image.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIMorphologyGradient, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMorphologyGradient, "CIAttributeFilterCategories": <__NSArrayI 0x604000051ac0>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMorphologyMaximum: inputImage=nil inputRadius=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Morphology Maximum, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The desired radius of the circular morphological operation to the image.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIMorphologyMaximum, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMorphologyMaximum, "CIAttributeFilterCategories": <__NSArrayI 0x604000051c70>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMorphologyMinimum: inputImage=nil inputRadius=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Morphology Minimum, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The desired radius of the circular morphological operation to the image.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CIMorphologyMinimum, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMorphologyMinimum, "CIAttributeFilterCategories": <__NSArrayI 0x604000051e50>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMotionBlur: inputImage=nil inputRadius=20 inputAngle=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8.3, "CIAttributeFilterDisplayName": Motion Blur, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the motion determines which direction the blur smears.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 20;
    CIAttributeDescription = "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIMotionBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMotionBlur, "CIAttributeFilterCategories": <__NSArrayI 0x604000052390>(
CICategoryBlur,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMultiplyBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Multiply Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIMultiplyBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMultiplyBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60000026f940>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIMultiplyCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Multiply, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIMultiplyCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMultiplyCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x60000009fa90>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CINinePartStretched: inputImage=nil inputBreakpoint0=[50 50] inputBreakpoint1=[150 150] inputGrowAmount=[100 100]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Nine Part Stretched, "inputBreakpoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[50 50]";
    CIAttributeDescription = "Lower left corner of image to retain before stretching begins.";
    CIAttributeDisplayName = Breakpoint0;
    CIAttributeType = CIAttributeTypePosition;
}, "inputBreakpoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "Upper right corner of image to retain after stretching ends.";
    CIAttributeDisplayName = Breakpoint1;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.12, "CIAttributeFilterName": CINinePartStretched, "inputGrowAmount": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[100 100]";
    CIAttributeDisplayName = GrowAmount;
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CINinePartStretched, "CIAttributeFilterCategories": <__NSArrayI 0x600000059fb0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CINinePartTiled: inputImage=nil inputBreakpoint0=[50 50] inputBreakpoint1=[150 150] inputGrowAmount=[100 100] inputFlipYTiles=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Nine Part Tiled, "inputBreakpoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[50 50]";
    CIAttributeDescription = "Lower left corner of image to retain before tiling begins.";
    CIAttributeDisplayName = Breakpoint0;
    CIAttributeType = CIAttributeTypePosition;
}, "inputBreakpoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "Upper right corner of image to retain after tiling ends.";
    CIAttributeDisplayName = Breakpoint1;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputFlipYTiles": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "Indicates that Y-Axis flip should occur.";
    CIAttributeDisplayName = FlipYTiles;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeType = CIAttributeTypeBoolean;
}, "CIAttributeFilterAvailable_Mac": 10.12, "CIAttributeFilterName": CINinePartTiled, "inputGrowAmount": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[100 100]";
    CIAttributeDisplayName = GrowAmount;
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CINinePartTiled, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045b5d0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CINoiseReduction: inputImage=nil inputNoiseLevel=0.02 inputSharpness=0.4>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Noise Reduction, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045bae0>(
CICategoryBlur,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.4";
    CIAttributeDescription = "The sharpness of the final image. The larger the value, the sharper the result.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CINoiseReduction, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CINoiseReduction, "inputNoiseLevel": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.02";
    CIAttributeDescription = "The amount of noise reduction. The larger the value, the more noise reduction.";
    CIAttributeDisplayName = "Noise Level";
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.1";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIOpTile: inputImage=nil inputCenter=[150 150] inputScale=2.8 inputAngle=0 inputWidth=65>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Op Tile, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.8";
    CIAttributeDescription = "The scale determines the number of tiles in the effect.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = "0.1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of a tile.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIOpTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 65;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 65;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIOpTile, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045bde0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIOverlayBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Overlay Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIOverlayBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIOverlayBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066db40>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPageCurlTransition: inputImage=nil inputTargetImage=nil inputBacksideImage=nil inputShadingImage=nil inputExtent=[0 0 300 300] inputTime=0 inputAngle=0 inputRadius=100>)
对应属性：Optional(["CIAttributeFilterCategories": <__NSArrayI 0x60c00045c5c0>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "The extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the curling page.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The radius of the curl.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = "0.01";
    CIAttributeSliderMax = 400;
    CIAttributeSliderMin = "0.01";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPageCurlTransition, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPageCurlTransition, "CIAttributeFilterDisplayName": Page Curl, "CIAttributeFilterAvailable_iOS": 9, "inputShadingImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "An image that looks like a shaded sphere enclosed in a square image.";
    CIAttributeDisplayName = "Shading Image";
    CIAttributeType = CIAttributeTypeImage;
}, "inputBacksideImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image that appears on the back of the source image, as the page curls to reveal the target image.";
    CIAttributeDisplayName = "Backside Image";
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPageCurlWithShadowTransition: inputImage=nil inputTargetImage=nil inputBacksideImage=nil inputExtent=[0 0 0 0] inputTime=0 inputAngle=0 inputRadius=100 inputShadowSize=0.5 inputShadowAmount=0.7 inputShadowExtent=[0 0 0 0]>)
对应属性：Optional(["inputBacksideImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image that appears on the back of the source image, as the page curls to reveal the target image.";
    CIAttributeDisplayName = "Backside Image";
}, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0]";
    CIAttributeDescription = "The extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045ce30>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the curling page.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The radius of the curl.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = "0.01";
    CIAttributeSliderMax = 400;
    CIAttributeSliderMin = "0.01";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "inputShadowSize": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDisplayName = ShadowSize;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPageCurlWithShadowTransition, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPageCurlWithShadowTransition, "CIAttributeFilterDisplayName": Page Curl With Shadow, "CIAttributeFilterAvailable_iOS": 9, "inputShadowExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 0 0]";
    CIAttributeDisplayName = ShadowExtent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputShadowAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.7";
    CIAttributeDisplayName = "Shadow Amount";
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIParallelogramTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputAcuteAngle=1.570796326794897 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Parallelogram Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAcuteAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.570796326794897";
    CIAttributeDescription = "The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.";
    CIAttributeDisplayName = "Acute Angle";
    CIAttributeIdentity = "1.570796326794897";
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIParallelogramTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIParallelogramTile, "CIAttributeFilterCategories": <__NSArrayI 0x60000005a1c0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPDF417BarcodeGenerator: inputMessage=nil inputMinWidth=nil inputMaxWidth=nil inputMinHeight=nil inputMaxHeight=nil inputDataColumns=nil inputRows=nil inputPreferredAspectRatio=nil inputCompactionMode=nil inputCompactStyle=nil inputCorrectionLevel=nil inputAlwaysSpecifyCompaction=nil>)
对应属性：Optional(["CIAttributeFilterCategories": <__NSArrayI 0x604000052de0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
, "inputAlwaysSpecifyCompaction": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = AlwaysSpecifyCompaction;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
}, "inputDataColumns": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = DataColumns;
    CIAttributeMax = 30;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 30;
    CIAttributeSliderMin = 1;
}, "inputMessage": {
    CIAttributeClass = NSData;
    CIAttributeDisplayName = Message;
}, "CIAttributeFilterAvailable_Mac": 10.11, "CIAttributeFilterName": CIPDF417BarcodeGenerator, "inputMinHeight": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = MinHeight;
    CIAttributeMax = 283;
    CIAttributeMin = 13;
    CIAttributeSliderMax = 283;
    CIAttributeSliderMin = 13;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPDF417BarcodeGenerator, "inputCompactStyle": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = CompactStyle;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
}, "CIAttributeFilterDisplayName": PDF417 Barcode Generator, "CIAttributeFilterAvailable_iOS": 9, "inputMaxWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = MaxWidth;
    CIAttributeMax = 583;
    CIAttributeMin = 56;
    CIAttributeSliderMax = 583;
    CIAttributeSliderMin = 56;
}, "inputPreferredAspectRatio": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = PreferredAspectRatio;
    CIAttributeMax = 9223372036854775807;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 9223372036854775807;
    CIAttributeSliderMin = 0;
}, "inputRows": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = Rows;
    CIAttributeMax = 90;
    CIAttributeMin = 3;
    CIAttributeSliderMax = 90;
    CIAttributeSliderMin = 3;
}, "inputMaxHeight": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = MaxHeight;
    CIAttributeMax = 283;
    CIAttributeMin = 13;
    CIAttributeSliderMax = 283;
    CIAttributeSliderMin = 13;
}, "inputCompactionMode": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = CompactionMode;
    CIAttributeMax = 3;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
}, "inputMinWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = MinWidth;
    CIAttributeMax = 583;
    CIAttributeMin = 56;
    CIAttributeSliderMax = 583;
    CIAttributeSliderMin = 56;
}, "inputCorrectionLevel": {
    CIAttributeClass = NSNumber;
    CIAttributeDisplayName = CorrectionLevel;
    CIAttributeMax = 8;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 8;
    CIAttributeSliderMin = 0;
}])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPerspectiveCorrection: inputImage=nil inputTopLeft=[118 484] inputTopRight=[646 507] inputBottomRight=[548 140] inputBottomLeft=[155 153] inputCrop=1>)
对应属性：Optional(["CIAttributeFilterDisplayName": Perspective Correction, "CIAttributeFilterAvailable_iOS": 8, "inputBottomRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[548 140]";
    CIAttributeDescription = "The bottom right coordinate to be perspective corrected.";
    CIAttributeDisplayName = "Bottom Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputBottomLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[155 153]";
    CIAttributeDescription = "The bottom left coordinate to be perspective corrected.";
    CIAttributeDisplayName = "Bottom Left";
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCrop": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = Crop;
    CIAttributeType = CIAttributeTypeBoolean;
}, "inputTopRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[646 507]";
    CIAttributeDescription = "The top right coordinate to be perspective corrected.";
    CIAttributeDisplayName = "Top Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[118 484]";
    CIAttributeDescription = "The top left coordinate to be perspective corrected.";
    CIAttributeDisplayName = "Top Left";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CIPerspectiveCorrection, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveCorrection, "CIAttributeFilterCategories": <__NSArrayI 0x604000053410>(
CICategoryGeometryAdjustment,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPerspectiveTile: inputImage=nil inputTopLeft=[118 484] inputTopRight=[646 507] inputBottomRight=[548 140] inputBottomLeft=[155 153]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Perspective Tile, "inputBottomRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[548 140]";
    CIAttributeDescription = "The bottom right coordinate of a tile.";
    CIAttributeDisplayName = "Bottom Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBottomLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[155 153]";
    CIAttributeDescription = "The bottom left coordinate of a tile.";
    CIAttributeDisplayName = "Bottom Left";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[646 507]";
    CIAttributeDescription = "The top right coordinate of a tile.";
    CIAttributeDisplayName = "Top Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[118 484]";
    CIAttributeDescription = "The top left coordinate of a tile.";
    CIAttributeDisplayName = "Top Left";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPerspectiveTile, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTile, "CIAttributeFilterCategories": <__NSArrayI 0x60800005bd80>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPerspectiveTransform: inputImage=nil inputTopLeft=[118 484] inputTopRight=[646 507] inputBottomRight=[548 140] inputBottomLeft=[155 153]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Perspective Transform, "inputBottomRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[548 140]";
    CIAttributeDescription = "The bottom right coordinate to map the image to.";
    CIAttributeDisplayName = "Bottom Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBottomLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[155 153]";
    CIAttributeDescription = "The bottom left coordinate to map the image to.";
    CIAttributeDisplayName = "Bottom Left";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[646 507]";
    CIAttributeDescription = "The top right coordinate to map the image to.";
    CIAttributeDisplayName = "Top Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[118 484]";
    CIAttributeDescription = "The top left coordinate to map the image to.";
    CIAttributeDisplayName = "Top Left";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPerspectiveTransform, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTransform, "CIAttributeFilterCategories": <__NSArrayI 0x604000053bc0>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPerspectiveTransformWithExtent: inputImage=nil inputExtent=[0 0 300 300] inputTopLeft=[118 484] inputTopRight=[646 507] inputBottomRight=[548 140] inputBottomLeft=[155 153]>)
对应属性：Optional(["CIAttributeFilterDisplayName": Perspective Transform with Extent, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "A rectangle that defines the extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "CIAttributeFilterAvailable_iOS": 6, "inputBottomRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[548 140]";
    CIAttributeDisplayName = "Bottom Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputBottomLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[155 153]";
    CIAttributeDisplayName = "Bottom Left";
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTopRight": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[646 507]";
    CIAttributeDisplayName = "Top Right";
    CIAttributeType = CIAttributeTypePosition;
}, "inputTopLeft": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[118 484]";
    CIAttributeDisplayName = "Top Left";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPerspectiveTransformWithExtent, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTransformWithExtent, "CIAttributeFilterCategories": <__NSArrayI 0x60000005a9d0>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectChrome: inputVersion=0 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Chrome, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectChrome, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectChrome, "CIAttributeFilterCategories": <__NSArrayI 0x600000280140>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectFade: inputVersion=0 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Fade, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectFade, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectFade, "CIAttributeFilterCategories": <__NSArrayI 0x600000280320>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectInstant: inputVersion=1 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Instant, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectInstant, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectInstant, "CIAttributeFilterCategories": <__NSArrayI 0x600000280500>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectMono: inputVersion=1 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Mono, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectMono, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectMono, "CIAttributeFilterCategories": <__NSArrayI 0x6000002806e0>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectNoir: inputVersion=1 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Noir, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectNoir, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectNoir, "CIAttributeFilterCategories": <__NSArrayI 0x6000002808c0>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectProcess: inputVersion=0 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Process, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectProcess, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectProcess, "CIAttributeFilterCategories": <__NSArrayI 0x600000280aa0>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectTonal: inputVersion=1 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Tonal, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectTonal, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectTonal, "CIAttributeFilterCategories": <__NSArrayI 0x600000280c80>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPhotoEffectTransfer: inputVersion=1 inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Photo Effect Transfer, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIPhotoEffectTransfer, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectTransfer, "CIAttributeFilterCategories": <__NSArrayI 0x600000280e60>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPinchDistortion: inputImage=nil inputCenter=[150 150] inputRadius=300 inputScale=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Pinch Distortion, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPinchDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPinchDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x60000005c2f0>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPinLightBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Pin Light Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIPinLightBlendMode, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPinLightBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066e9c0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPixellate: inputImage=nil inputCenter=[150 150] inputScale=8>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Pixelate, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 8;
    CIAttributeDescription = "The scale determines the size of the squares. Larger values result in larger squares.";
    CIAttributeDisplayName = Scale;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPixellate, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPixellate, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045d520>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIPointillize: inputImage=nil inputRadius=20 inputCenter=[150 150]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Pointillize, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 20;
    CIAttributeDescription = "The radius of the circles in the resulting pattern.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 1;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIPointillize, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPointillize, "CIAttributeFilterCategories": <__NSArrayI 0x60800005c380>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIQRCodeGenerator: inputMessage=nil inputCorrectionLevel=M>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": QRCode Generator, "inputCorrectionLevel": {
    CIAttributeClass = NSString;
    CIAttributeDefault = M;
    CIAttributeDescription = "QRCode correction level L, M, Q, or H.";
    CIAttributeDisplayName = CorrectionLevel;
}, "inputMessage": {
    CIAttributeClass = NSData;
    CIAttributeDisplayName = Message;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIQRCodeGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIQRCodeGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045da90>(
CICategoryGenerator,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIRadialGradient: inputCenter=[150 150] inputRadius0=5 inputRadius1=100 inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Radial Gradient, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The second color to use in the gradient.";
    CIAttributeDisplayName = "Color 2";
    CIAttributeType = CIAttributeTypeColor;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The first color to use in the gradient.";
    CIAttributeDisplayName = "Color 1";
    CIAttributeType = CIAttributeTypeColor;
}, "inputRadius1": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The radius of the ending circle to use in the gradient.";
    CIAttributeDisplayName = "Radius 2";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIRadialGradient, "inputRadius0": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 5;
    CIAttributeDescription = "The radius of the starting circle to use in the gradient.";
    CIAttributeDisplayName = "Radius 1";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRadialGradient, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045df70>(
CICategoryGradient,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIRandomGenerator: )
对应属性：Optional(["CIAttributeFilterDisplayName": Random Generator, "CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIRandomGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRandomGenerator, "CIAttributeFilterCategories": <__NSArrayI 0x60000005c6b0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIRippleTransition: inputImage=nil inputTargetImage=nil inputShadingImage=nil inputCenter=[150 150] inputExtent=[0 0 300 300] inputTime=0 inputWidth=100 inputScale=50>)
对应属性：Optional(["inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "A rectangle that defines the extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIRippleTransition, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of the ripple.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 1;
    CIAttributeSliderMax = 300;
    CIAttributeSliderMin = 10;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRippleTransition, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 50;
    CIAttributeDescription = "A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).";
    CIAttributeDisplayName = Scale;
    CIAttributeIdentity = 0;
    CIAttributeMin = "-50";
    CIAttributeSliderMax = 50;
    CIAttributeSliderMin = "-50";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterDisplayName": Ripple, "CIAttributeFilterAvailable_iOS": 9, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputShadingImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "An image that looks like a shaded sphere enclosed in a square image.";
    CIAttributeDisplayName = "Shading Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60000005cad0>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIRowAverage: inputImage=nil inputExtent=[0 0 640 80]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Row Average, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 640 80]";
    CIAttributeDescription = "A rectangle that specifies the subregion of the image that you want to process.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to process.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CIRowAverage, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRowAverage, "CIAttributeFilterCategories": <__NSArrayI 0x60000005d1c0>(
CICategoryReduction,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISaturationBlendMode: inputVersion=1 inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Saturation Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISaturationBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISaturationBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x600000271180>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIScreenBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Screen Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CIScreenBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIScreenBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x600000271780>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISepiaTone: inputImage=nil inputIntensity=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Sepia Tone, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CISepiaTone, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISepiaTone, "CIAttributeFilterCategories": <__NSArrayI 0x60c000297b60>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn,
CICategoryXMPSerializable
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIShadedMaterial: inputImage=nil inputShadingImage=nil inputScale=10>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Shaded Material, "inputScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 10;
    CIAttributeDescription = "The scale of the effect. The higher the value, the more dramatic the effect.";
    CIAttributeDisplayName = Scale;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = "0.5";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputShadingImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.";
    CIAttributeDisplayName = "Shading Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIShadedMaterial, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIShadedMaterial, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045e5d0>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISharpenLuminance: inputImage=nil inputSharpness=0.4 inputRadius=1.69>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Sharpen Luminance, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.4";
    CIAttributeDescription = "The amount of sharpening to apply. Larger values are sharper.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.69";
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 20;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CISharpenLuminance, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISharpenLuminance, "CIAttributeFilterCategories": <__NSArrayI 0x604000054040>(
CICategorySharpen,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISixfoldReflectedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Sixfold Reflected Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CISixfoldReflectedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISixfoldReflectedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60800005c860>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISixfoldRotatedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Sixfold Rotated Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CISixfoldRotatedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISixfoldRotatedTile, "CIAttributeFilterCategories": <__NSArrayI 0x60800005cd70>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISmoothLinearGradient: inputPoint0=[0 0] inputPoint1=[200 200] inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Smooth Linear Gradient, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISmoothLinearGradient, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The first color to use in the gradient.";
    CIAttributeDisplayName = "Color 1";
    CIAttributeType = CIAttributeTypeColor;
}, "inputPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[200 200]";
    CIAttributeDescription = "The ending position of the gradient -- where the second color begins.";
    CIAttributeDisplayName = "Point 1";
    CIAttributeType = CIAttributeTypePosition;
}, "inputPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0]";
    CIAttributeDescription = "The starting position of the gradient -- where the first color begins.";
    CIAttributeDisplayName = "Point 0";
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CISmoothLinearGradient, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The second color to use in the gradient.";
    CIAttributeDisplayName = "Color 2";
    CIAttributeType = CIAttributeTypeColor;
}, "CIAttributeFilterCategories": <__NSArrayI 0x6040000545e0>(
CICategoryGradient,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISoftLightBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Soft Light Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISoftLightBlendMode, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISoftLightBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x608000270d00>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISourceAtopCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Source Atop, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISourceAtopCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceAtopCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x608000280500>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISourceInCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Source In, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISourceInCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceInCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x608000280690>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISourceOutCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Source Out, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISourceOutCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceOutCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x600000281c20>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISourceOverCompositing: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Source Over, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISourceOverCompositing, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceOverCompositing, "CIAttributeFilterCategories": <__NSArrayI 0x60c0002987e0>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryHighDynamicRange,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISpotColor: inputImage=nil inputCenterColor1=(0.0784 0.0627 0.0706 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputReplacementColor1=(0.4392 0.1922 0.1961 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputCloseness1=0.22 inputContrast1=0.98 inputCenterColor2=(0.5255 0.3059 0.3451 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputReplacementColor2=(0.9137 0.5608 0.5059 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputCloseness2=0.15 inputContrast2=0.98 inputCenterColor3=(0.9216 0.4549 0.3333 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputReplacementColor3=(0.9098 0.7529 0.6078 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputCloseness3=0.5 inputContrast3=0.99>)
对应属性：Optional(["inputContrast2": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.98";
    CIAttributeDescription = "The contrast of the second replacement color.";
    CIAttributeDisplayName = "Contrast 2";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputReplacementColor3": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.9098 0.7529 0.6078 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A replacement color for the third color range.";
    CIAttributeDisplayName = "Replacement Color 3";
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCenterColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.0784 0.0627 0.0706 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The center value of the first color range to replace.";
    CIAttributeDisplayName = "Center Color 1";
}, "inputCloseness1": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.22";
    CIAttributeDescription = "A value that indicates how close the first color must match before it is replaced.";
    CIAttributeDisplayName = "Closeness 1";
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.5";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.5, "inputContrast3": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.99";
    CIAttributeDescription = "The contrast of the third replacement color.";
    CIAttributeDisplayName = "Contrast 3";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CISpotColor, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISpotColor, "inputReplacementColor2": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.9137 0.5608 0.5059 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A replacement color for the second color range.";
    CIAttributeDisplayName = "Replacement Color 2";
}, "CIAttributeFilterDisplayName": Spot Color, "inputCenterColor2": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.5255 0.3059 0.3451 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The center value of the second color range to replace.";
    CIAttributeDisplayName = "Center Color 2";
}, "CIAttributeFilterAvailable_iOS": 9, "inputReplacementColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.4392 0.1922 0.1961 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A replacement color for the first color range.";
    CIAttributeDisplayName = "Replacement Color 1";
}, "inputCloseness2": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.15";
    CIAttributeDescription = "A value that indicates how close the second color must match before it is replaced.";
    CIAttributeDisplayName = "Closeness 2";
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.5";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputContrast1": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.98";
    CIAttributeDescription = "The contrast of the first replacement color.";
    CIAttributeDisplayName = "Contrast 1";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCloseness3": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "A value that indicates how close the third color must match before it is replaced.";
    CIAttributeDisplayName = "Closeness 3";
    CIAttributeMin = 0;
    CIAttributeSliderMax = "0.5";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenterColor3": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0.9216 0.4549 0.3333 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The center value of the third color range to replace.";
    CIAttributeDisplayName = "Center Color 3";
}, "CIAttributeFilterCategories": <__NSArrayI 0x60c00045f050>(
CICategoryBuiltIn,
CICategoryStillImage,
CICategoryVideo,
CICategoryStylize
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISpotLight: inputImage=nil inputLightPosition=[400 600 150] inputLightPointsAt=[200 200 0] inputBrightness=3 inputConcentration=0.1 inputColor=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterDisplayName": Spot Light, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color of the spotlight.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeOpaqueColor;
}, "CIAttributeFilterAvailable_iOS": 9, "inputLightPosition": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[400 600 150]";
    CIAttributeDescription = "The x and y position of the spotlight.";
    CIAttributeDisplayName = "Light Position";
    CIAttributeType = CIAttributeTypePosition3;
}, "inputLightPointsAt": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[200 200 0]";
    CIAttributeDescription = "The x and y position that the spotlight points at.";
    CIAttributeDisplayName = "Light Points At";
    CIAttributeType = CIAttributeTypePosition3;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputConcentration": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.1";
    CIAttributeDescription = "The spotlight size. The smaller the value, the more tightly focused the light beam.";
    CIAttributeDisplayName = Concentration;
    CIAttributeIdentity = 20;
    CIAttributeMin = "0.001";
    CIAttributeSliderMax = "1.5";
    CIAttributeSliderMin = "0.001";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CISpotLight, "inputBrightness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 3;
    CIAttributeDescription = "The brightness of the spotlight.";
    CIAttributeDisplayName = Brightness;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISpotLight, "CIAttributeFilterCategories": <__NSArrayI 0x60000005e900>(
CICategoryStylize,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISRGBToneCurveToLinear: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": sRGB Tone Curve to Linear, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeFilterName": CISRGBToneCurveToLinear, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISRGBToneCurveToLinear, "CIAttributeFilterCategories": <__NSArrayI 0x608000270780>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIStarShineGenerator: inputCenter=[150 150] inputColor=(1 0.8 0.6 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputRadius=50 inputCrossScale=15 inputCrossAngle=0.6 inputCrossOpacity=-2 inputCrossWidth=2.5 inputEpsilon=-2>)
对应属性：Optional(["inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0.8 0.6 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color to use for the outer shell of the circular star.";
    CIAttributeDisplayName = Color;
}, "inputCrossAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.6";
    CIAttributeDescription = "The angle of the cross pattern.";
    CIAttributeDisplayName = "Cross Angle";
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputCrossWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.5";
    CIAttributeDescription = "The width of the cross pattern.";
    CIAttributeDisplayName = "Cross Width";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = "0.5";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 50;
    CIAttributeDescription = "The radius of the star.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 300;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputEpsilon": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "-2";
    CIAttributeDescription = "The length of the cross spikes.";
    CIAttributeDisplayName = Epsilon;
    CIAttributeIdentity = "-2";
    CIAttributeMin = "-8";
    CIAttributeSliderMax = 0;
    CIAttributeSliderMin = "-8";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIStarShineGenerator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStarShineGenerator, "inputCrossScale": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 15;
    CIAttributeDescription = "The size of the cross pattern.";
    CIAttributeDisplayName = "Cross Scale";
    CIAttributeIdentity = 15;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterDisplayName": Star Shine, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the star.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeFilterAvailable_iOS": 6, "inputCrossOpacity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "-2";
    CIAttributeDescription = "The opacity of the cross pattern.";
    CIAttributeDisplayName = "Cross Opacity";
    CIAttributeIdentity = "-2";
    CIAttributeMin = "-8";
    CIAttributeSliderMax = 0;
    CIAttributeSliderMin = "-8";
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60800005e3f0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIStraightenFilter: inputImage=nil inputAngle=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Straighten, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "An angle in radians.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.7, "CIAttributeFilterName": CIStraightenFilter, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStraightenFilter, "CIAttributeFilterCategories": <__NSArrayI 0x60000005ef90>(
CICategoryGeometryAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIStretchCrop: inputImage=nil inputSize=[1280 720] inputCropAmount=0.25 inputCenterStretchAmount=0.25>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Stretch Crop, "CIAttributeFilterAvailable_Mac": 10.6, "inputCropAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.25";
    CIAttributeDescription = "Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used. If 1 then only cropping is used.";
    CIAttributeDisplayName = CropAmount;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputCenterStretchAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.25";
    CIAttributeDescription = "Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio. If 1 then the image is stretched uniformly.";
    CIAttributeDisplayName = CenterStretchAmount;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CIStretchCrop, "inputSize": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[1280 720]";
    CIAttributeDescription = "The size in pixels of the output image.";
    CIAttributeDisplayName = Size;
    CIAttributeType = CIAttributeTypePosition;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStretchCrop, "CIAttributeFilterCategories": <__NSArrayI 0x60000005f410>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIStripesGenerator: inputCenter=[150 150] inputColor0=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputColor1=(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputWidth=80 inputSharpness=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Stripes, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStripesGenerator, "inputSharpness": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.";
    CIAttributeDisplayName = Sharpness;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the stripe pattern.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputColor0": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color to use for the odd stripes.";
    CIAttributeDisplayName = "Color 1";
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIStripesGenerator, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 80;
    CIAttributeDescription = "The width of a stripe.";
    CIAttributeDisplayName = Width;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputColor1": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(0 0 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color to use for the even stripes.";
    CIAttributeDisplayName = "Color 2";
}, "CIAttributeFilterCategories": <__NSArrayI 0x60800005e9c0>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISubtractBlendMode: inputImage=nil inputBackgroundImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8, "CIAttributeFilterDisplayName": Subtract Blend Mode, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputBackgroundImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as a background image.";
    CIAttributeDisplayName = "Background Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterName": CISubtractBlendMode, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISubtractBlendMode, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066f540>(
CICategoryCompositeOperation,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISunbeamsGenerator: inputCenter=[150 150] inputColor=(1 0.5 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputSunRadius=40 inputMaxStriationRadius=2.58 inputStriationStrength=0.5 inputStriationContrast=1.375 inputTime=0>)
对应属性：Optional(["inputStriationContrast": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.375";
    CIAttributeDescription = "The contrast of the sunbeams. Higher values result in more contrast.";
    CIAttributeDisplayName = "Striation Contrast";
    CIAttributeIdentity = "1.375";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 0.5 0 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color of the sun.";
    CIAttributeDisplayName = Color;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The duration of the effect.";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CISunbeamsGenerator, "inputSunRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 40;
    CIAttributeDescription = "The radius of the sun.";
    CIAttributeDisplayName = "Sun Radius";
    CIAttributeIdentity = 40;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISunbeamsGenerator, "CIAttributeFilterDisplayName": Sunbeams, "CIAttributeFilterAvailable_iOS": 9, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the sunbeam pattern";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputMaxStriationRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.58";
    CIAttributeDescription = "The radius of the sunbeams.";
    CIAttributeDisplayName = "Maximum Striation Radius";
    CIAttributeIdentity = "2.58";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 10;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputStriationStrength": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The intensity of the sunbeams. Higher values result in more intensity.";
    CIAttributeDisplayName = "Striation Strength";
    CIAttributeIdentity = "0.5";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 3;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterCategories": <__NSArrayI 0x604000054a30>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CISwipeTransition: inputImage=nil inputTargetImage=nil inputExtent=[0 0 300 300] inputColor=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB) inputTime=0 inputAngle=0 inputWidth=300 inputOpacity=0>)
对应属性：Optional(["inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "The color of the swipe.";
    CIAttributeDisplayName = Color;
    CIAttributeType = CIAttributeTypeOpaqueColor;
}, "inputExtent": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0 300 300]";
    CIAttributeDescription = "The extent of the effect.";
    CIAttributeDisplayName = Extent;
    CIAttributeType = CIAttributeTypeRectangle;
}, "inputOpacity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The opacity of the swipe.";
    CIAttributeDisplayName = Opacity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputTime": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).";
    CIAttributeDisplayName = Time;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeTime;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle of the swipe.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputTargetImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The target image for a transition.";
    CIAttributeDisplayName = "Target Image";
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CISwipeTransition, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The width of the swipe";
    CIAttributeDisplayName = Width;
    CIAttributeMin = "0.1";
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = "0.1";
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISwipeTransition, "CIAttributeFilterDisplayName": Swipe, "CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterCategories": <__NSArrayI 0x60000005f770>(
CICategoryTransition,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITemperatureAndTint: inputImage=nil inputNeutral=[6500 0] inputTargetNeutral=[6500 0]>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Temperature and Tint, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputNeutral": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[6500 0]";
    CIAttributeDisplayName = Neutral;
    CIAttributeIdentity = "[6500 0]";
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeFilterAvailable_Mac": 10.7, "CIAttributeFilterName": CITemperatureAndTint, "inputTargetNeutral": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[6500 0]";
    CIAttributeDisplayName = TargetNeutral;
    CIAttributeIdentity = "[6500 0]";
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITemperatureAndTint, "CIAttributeFilterCategories": <__NSArrayI 0x60c00066f4c0>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITextImageGenerator: inputText=nil inputFontName=HelveticaNeue inputFontSize=12 inputScaleFactor=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 11, "CIAttributeFilterDisplayName": Text Image Generator, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITextImageGenerator, "inputFontSize": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 12;
    CIAttributeDisplayName = FontSize;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 128;
    CIAttributeSliderMin = 9;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputScaleFactor": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDisplayName = "Scale Factor";
    CIAttributeMin = 0;
    CIAttributeSliderMax = 4;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.13, "CIAttributeFilterName": CITextImageGenerator, "inputFontName": {
    CIAttributeClass = NSString;
    CIAttributeDefault = HelveticaNeue;
    CIAttributeDisplayName = FontName;
}, "inputText": {
    CIAttributeClass = NSString;
    CIAttributeDisplayName = Text;
}, "CIAttributeFilterCategories": <__NSArrayI 0x60c000640420>(
CICategoryGenerator,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIThermal: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": Thermal, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.11, "CIAttributeFilterName": CIThermal, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIThermal, "CIAttributeFilterCategories": <__NSArrayI 0x600000272700>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIToneCurve: inputImage=nil inputPoint0=[0 0] inputPoint1=[0.25 0.25] inputPoint2=[0.5 0.5] inputPoint3=[0.75 0.75] inputPoint4=[1 1]>)
对应属性：Optional(["CIAttributeFilterDisplayName": Tone Curve, "CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterCategories": <__NSArrayI 0x600000272780>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputPoint1": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0.25 0.25]";
    CIAttributeDisplayName = "Point 1";
    CIAttributeIdentity = "[0.25 0.25]";
    CIAttributeType = CIAttributeTypeOffset;
}, "inputPoint4": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[1 1]";
    CIAttributeDisplayName = "Point 4";
    CIAttributeIdentity = "[1 1]";
    CIAttributeType = CIAttributeTypeOffset;
}, "inputPoint0": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0 0]";
    CIAttributeDisplayName = "Point 0";
    CIAttributeIdentity = "[0 0]";
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeFilterAvailable_Mac": 10.7, "inputPoint3": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0.75 0.75]";
    CIAttributeDisplayName = "Point 3";
    CIAttributeIdentity = "[0.75 0.75]";
    CIAttributeType = CIAttributeTypeOffset;
}, "inputPoint2": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[0.5 0.5]";
    CIAttributeDisplayName = "Point 2";
    CIAttributeIdentity = "[0.5 0.5]";
    CIAttributeType = CIAttributeTypeOffset;
}, "CIAttributeFilterName": CIToneCurve, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIToneCurve])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITorusLensDistortion: inputImage=nil inputCenter=[150 150] inputRadius=160 inputWidth=80 inputRefraction=1.7>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Torus Lens Distortion, "inputRefraction": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "1.7";
    CIAttributeDescription = "The refraction of the glass.";
    CIAttributeDisplayName = Refraction;
    CIAttributeIdentity = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 5;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the torus.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 160;
    CIAttributeDescription = "The outer radius of the torus.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 500;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CITorusLensDistortion, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 80;
    CIAttributeDescription = "The width of the ring.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITorusLensDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x604000054b80>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITriangleKaleidoscope: inputImage=nil inputPoint=[150 150] inputSize=700 inputRotation=5.924285296593801 inputDecay=0.85>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Triangle Kaleidoscope, "inputRotation": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "5.924285296593801";
    CIAttributeDescription = "Rotation angle of the triangle.";
    CIAttributeDisplayName = Rotation;
    CIAttributeSliderMax = "6.283185307179586";
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "Input image to generate kaleidoscope effect from.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputDecay": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.85";
    CIAttributeDescription = "The decay determines how fast the color fades from the center triangle.";
    CIAttributeDisplayName = Decay;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputPoint": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the triangular area in the input image.";
    CIAttributeDisplayName = Point;
    CIAttributeType = CIAttributeTypePosition;
}, "inputSize": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 700;
    CIAttributeDescription = "The size in pixels of the triangle.";
    CIAttributeDisplayName = Size;
    CIAttributeSliderMax = 1000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterName": CITriangleKaleidoscope, "CIAttributeFilterAvailable_Mac": 10.10, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITriangleKaleidoscope, "CIAttributeFilterCategories": <__NSArrayI 0x6040000552d0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITriangleTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 9, "CIAttributeFilterDisplayName": Triangle Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CITriangleTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITriangleTile, "CIAttributeFilterCategories": <__NSArrayI 0x60c0006409c0>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITwelvefoldReflectedTile: inputImage=nil inputCenter=[150 150] inputAngle=0 inputWidth=100>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Twelvefold Reflected Tile, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The x and y position to use as the center of the effect";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The angle (in radians) of the tiled pattern.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "3.141592653589793";
    CIAttributeSliderMin = "-3.141592653589793";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.5, "CIAttributeFilterName": CITwelvefoldReflectedTile, "inputWidth": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 100;
    CIAttributeDescription = "The width of a tile.";
    CIAttributeDisplayName = Width;
    CIAttributeIdentity = 100;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = 1;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITwelvefoldReflectedTile, "CIAttributeFilterCategories": <__NSArrayI 0x600000240a50>(
CICategoryTileEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CITwirlDistortion: inputImage=nil inputCenter=[150 150] inputRadius=300 inputAngle=3.141592653589793>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Twirl Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "3.141592653589793";
    CIAttributeDescription = "The angle (in radians) of the twirl. Values can be positive or negative.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "12.56637061435917";
    CIAttributeSliderMin = "-12.56637061435917";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 300;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 500;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CITwirlDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITwirlDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x60c000640f30>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIUnsharpMask: inputImage=nil inputRadius=2.5 inputIntensity=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Unsharp Mask, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDescription = "The intensity of the effect. The larger the value, the more contrast in the affected area.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "2.5";
    CIAttributeDescription = "The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 100;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIUnsharpMask, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIUnsharpMask, "CIAttributeFilterCategories": <__NSArrayI 0x6040000557e0>(
CICategorySharpen,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIVibrance: inputImage=nil inputAmount=0>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Vibrance, "inputAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The amount to adjust the saturation.";
    CIAttributeDisplayName = Amount;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.7, "CIAttributeFilterName": CIVibrance, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVibrance, "CIAttributeFilterCategories": <__NSArrayI 0x604000267a80>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIVignette: inputImage=nil inputIntensity=0 inputRadius=1>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": Vignette, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 0;
    CIAttributeDescription = "The intensity of the effect.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeMax = 2;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIVignette, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVignette, "CIAttributeFilterCategories": <__NSArrayI 0x604000267b00>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIVignetteEffect: inputImage=nil inputCenter=[150 150] inputRadius=150 inputIntensity=1 inputFalloff=0.5>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 7, "CIAttributeFilterDisplayName": Vignette Effect, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputIntensity": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 1;
    CIAttributeDescription = "The intensity of the effect.";
    CIAttributeDisplayName = Intensity;
    CIAttributeIdentity = 0;
    CIAttributeMax = 1;
    CIAttributeMin = "-1";
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = "-1";
    CIAttributeType = CIAttributeTypeScalar;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 150;
    CIAttributeDescription = "The distance from the center of the effect.";
    CIAttributeDisplayName = Radius;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 2000;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "inputFalloff": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "0.5";
    CIAttributeDisplayName = Falloff;
    CIAttributeMax = 1;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 1;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeScalar;
}, "CIAttributeFilterAvailable_Mac": 10.9, "CIAttributeFilterName": CIVignetteEffect, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVignetteEffect, "CIAttributeFilterCategories": <__NSArrayI 0x604000267a40>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIVortexDistortion: inputImage=nil inputCenter=[150 150] inputRadius=300 inputAngle=56.54866776461628>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 6, "CIAttributeFilterDisplayName": Vortex Distortion, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputAngle": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = "56.54866776461628";
    CIAttributeDescription = "The angle (in radians) of the vortex.";
    CIAttributeDisplayName = Angle;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = "94.24777960769379";
    CIAttributeSliderMin = "-94.24777960769379";
    CIAttributeType = CIAttributeTypeAngle;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "inputRadius": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 300;
    CIAttributeDescription = "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.";
    CIAttributeDisplayName = Radius;
    CIAttributeIdentity = 0;
    CIAttributeMin = 0;
    CIAttributeSliderMax = 800;
    CIAttributeSliderMin = 0;
    CIAttributeType = CIAttributeTypeDistance;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIVortexDistortion, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVortexDistortion, "CIAttributeFilterCategories": <__NSArrayI 0x600000240f60>(
CICategoryDistortionEffect,
CICategoryVideo,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIWhitePointAdjust: inputImage=nil inputColor=(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 5, "CIAttributeFilterDisplayName": White Point Adjust, "inputColor": {
    CIAttributeClass = CIColor;
    CIAttributeDefault = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeDescription = "A color to use as the white point.";
    CIAttributeDisplayName = Color;
    CIAttributeIdentity = "(1 1 1 1) <CGColorSpace 0x6080000ad980> (kCGColorSpaceDeviceRGB)";
    CIAttributeType = CIAttributeTypeColor;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIWhitePointAdjust, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIWhitePointAdjust, "CIAttributeFilterCategories": <__NSArrayI 0x600000272c80>(
CICategoryColorAdjustment,
CICategoryVideo,
CICategoryStillImage,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIXRay: inputImage=nil>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 10, "CIAttributeFilterDisplayName": X-Ray, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.11, "CIAttributeFilterName": CIXRay, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIXRay, "CIAttributeFilterCategories": <__NSArrayI 0x600000272e00>(
CICategoryColorEffect,
CICategoryVideo,
CICategoryInterlaced,
CICategoryNonSquarePixels,
CICategoryStillImage,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________
滤镜名称:Optional(<CIZoomBlur: inputImage=nil inputCenter=[150 150] inputAmount=20>)
对应属性：Optional(["CIAttributeFilterAvailable_iOS": 8.3, "CIAttributeFilterDisplayName": Zoom Blur, "inputAmount": {
    CIAttributeClass = NSNumber;
    CIAttributeDefault = 20;
    CIAttributeDescription = "The zoom-in amount. Larger values result in more zooming in.";
    CIAttributeDisplayName = Amount;
    CIAttributeIdentity = 0;
    CIAttributeSliderMax = 200;
    CIAttributeSliderMin = "-200";
    CIAttributeType = CIAttributeTypeDistance;
}, "inputCenter": {
    CIAttributeClass = CIVector;
    CIAttributeDefault = "[150 150]";
    CIAttributeDescription = "The center of the effect as x and y coordinates.";
    CIAttributeDisplayName = Center;
    CIAttributeType = CIAttributeTypePosition;
}, "inputImage": {
    CIAttributeClass = CIImage;
    CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
    CIAttributeDisplayName = Image;
    CIAttributeType = CIAttributeTypeImage;
}, "CIAttributeFilterAvailable_Mac": 10.4, "CIAttributeFilterName": CIZoomBlur, "CIAttributeReferenceDocumentation": http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIZoomBlur, "CIAttributeFilterCategories": <__NSArrayI 0x600000241b30>(
CICategoryBlur,
CICategoryStillImage,
CICategoryVideo,
CICategoryBuiltIn
)
])
_______________________________________________________________________________________________________________

```

