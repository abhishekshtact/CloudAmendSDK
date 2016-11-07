//
//  Amend.h
//  Imagetact
//
//  Created by admin on 22/09/16.
//  Copyright © 2016 adminTACT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ImageneryDelegate <NSObject>
@required
- (void)didReceiveData:(NSString *)imageId andReqCode:(int) reqCode;
@optional
- (void)didfailedWithError:(NSString *)errorMessage andReqCode:(int) reqCode;


@end


typedef NS_ENUM(NSUInteger, UIFitState) {
    FIT_XY       = 0,
    FIT_WIDTH    =  1 ,
    FIT_HEIGHT    = 2,
    FIT_FILL      = 3,
    FIT_INSIDE    = 4
};

typedef NS_ENUM(NSUInteger, UIAlignHeightState) {
    H_ALIGN_LEFT       = 0,
    H_ALIGN_RIGHT  =  1 ,
    H_ALIGN_CENTER    = 2
};

typedef NS_ENUM(NSUInteger, UIAlignWidthState) {
    W_ALIGN_TOP       = 0,
    W_ALIGN_BOTTOM  =  1 ,
    W_ALIGN_CENTER    = 2
};

typedef NS_ENUM(NSUInteger, UIAlignInsideState) {
    I__ALIGN_TOP       = 0,
    I_ALIGN_BOTTOM      =  1 ,
    I_ALIGN_LEFT       = 2,
    I_ALIGN_RIGHT  =  3,
    I_ALIGN_CENTER    = 4
};

typedef NS_ENUM(NSUInteger, UIFlipState) {
    FLIPX       = 0,
    FLIPY    =  1 ,
    FLIPXY    = 2,
  
};


typedef NS_ENUM(NSUInteger, UIFONTSTYLE) {
    NORMAL       = 0,
    BOLD    =  1 ,
    ITALIC    = 2,
    UNDERLINE    =  3 ,
};


typedef NS_ENUM(NSUInteger, UICOLORLIST) {
    WHITE       = 0,
    SILVER    =  1 ,
    GRAY    = 2,
    BLACK    =  3 ,
    RED    =  4 ,
    MAROON    = 5,
    YELLOW    =  6 ,
    OLIVE    =  7 ,
    LIME    = 8,
    GREEN    =  9 ,
    AQUA    =  10 ,
    TEAL    = 11,
    BLUE    =  12 ,
    NAVY    =  13 ,
    FUCHSIA    = 14,
    PURPLE    =  15 ,

};



@interface Amend : NSObject{
id <ImageneryDelegate> _delegate;
    
 
}


+(Amend *)getInstance;
-(id)transformWidth:(int)width;
-(id)transformHeight:(int)height;
-(id)transform:(int)width andHeight:(int)height;
-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState)fit;
-(id)transform:(int)width andHeight:(int)height andAlign:(UIAlignInsideState )align;
-(id)transform:(int)width andHeight:(int)height FIT_WIDTH_andAlign:(UIAlignWidthState)align;
-(id)transform:(int)width andHeight:(int)height FIT_HEIGHT_andAlign:(UIAlignHeightState)align;
-(id)transform:(int)width andHeight:(int)height FIT_INSIDE_andAlign :(UIAlignInsideState)align;
-(id)transform:(int)width andHeight:(int)height andOriginX:(int)originX andOriginY:(int)originY;
-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState)fit andBackGroundColour:(UICOLORLIST)color;
-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState)fit andBackGroundColourHexCode:(NSString *)ColorHexCode;


-(id)transformFitFace:(int)width andHeight:(int)height;


-(id)crop:(int )value;
-(id)cropMax;

-(id)quality:(int )value;
-(id)grayScale;
-(id)invert;

-(id)brightness:(int )value;
-(id)contrast:(int )value;
-(id)brightness:(int )value andContrast:(int )contrast;



-(id)flip:(int )value;
-(id)flipType:(UIFlipState)type;
-(id)rotate:(int )value;



-(id)insertImage:(NSString *)imageUrl andPositionX :(int)X andPositionY :(int)Y;
-(id)insertImage:(NSString *)imageUrl;

-(id)insertText:(NSString *)inserttext andPositionX :(int)X andPositionY :(int)Y andSize:(int)size andStyle:(UIFONTSTYLE )style andColor:(UICOLORLIST )color;


//ConverImageinTO Base64 or Byte Arrray
- (NSString *)ConvertImageintoBase64:(UIImage *)image;
-(NSString * )ConvertImageintoByteStream:(UIImage *)image;




// Upload Image on Server
-(id)initWithDelegate:(id)delegate andImage: (UIImage *)image andReqCode:(int) reqCode andAccessKey:(NSString *)accessKey andAccessSecret:(NSString *)accessSecret;
-(void) executeWithBase64;
-(void) executeWithBase64:(NSString *)imageName;
-(void) executeWithByteArray;

-(NSString *)getImageByURL;


-(NSString *)getImage:(NSString *)imageID;


-(NSString *)getImageByURL:(NSString *)imageURL;






@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *accessKey;
@property (nonatomic, strong) NSString *accessSecret;
@property (nonatomic,strong) id delegate;
@property  int reqCode;
@property (nonatomic,strong) NSString* data;
@property (nonatomic,strong) NSString* imageName;


// Store All property Action in given Order
@property (strong,nonatomic) NSString *allValue;

@end
