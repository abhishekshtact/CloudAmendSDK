



#import "Amend.h"

@implementation Amend



static Amend *instance = nil;

+(Amend *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [Amend new];
        }
    }
    return instance;
}



-(id)transformWidth:(int)width{
    if(width > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        width = 6000;
    
    }
    [self appendString:[NSString stringWithFormat:@"w_%d",width]];
    return  self;
    
}
-(id)transformHeight:(int)height{
    
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"h_%d",height]];
    return  self;
}
-(id)transform:(int )width andHeight:(int)height{
    
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d",width,height]];
    
    return  self;
}
-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState *)fit{
    
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@",width,height,[self getUIFitState:fit]]];
    return  self;
}






-(id)transform:(int)width andHeight:(int)height andAlign:(UIAlignInsideState)align{
    
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@",width,height,[self getUIalighmentInsideStyle:align]]];
    return  self;
}




-(id)transform:(int)width andHeight:(int)height FIT_WIDTH_andAlign:(UIAlignWidthState)align{
    
    NSString *fitType = @"fit_width";
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@,%@",width,height,fitType,[self getUIAlignmentWidth:align]]];
    return  self;
}



-(id)transformFitFace:(int)width andHeight:(int)height{
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,fit_face",width,height]];
    return  self;
}

-(id)transform:(int)width andHeight:(int)height FIT_HEIGHT_andAlign:(UIAlignHeightState)align{
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    NSString *fitType = @"fit_height";
    
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@,%@",width,height,fitType,[self getUIalighmentHeightStyle:align]]];
    return  self;
}



-(id)transform:(int)width andHeight:(int)height FIT_INSIDE_andAlign :(UIAlignInsideState)align{
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    NSString *fitType = @"fit_inside";
    
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@,%@",width,height,fitType,[self getUIalighmentInsideStyle:align]]];
    return  self;
}

-(id)transform:(int)width andHeight:(int)height andOriginX:(int)originX andOriginY:(int)originY{
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,x_%d,y_%d",width,height,originX,originY]];
    
    return  self;
}

-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState)fit andBackGroundColour:(UICOLORLIST)color{
    
    if(height > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@,c_%@",width,height,[self getUIFitState:fit],[self getUIColor:color]]];
    return  self;
}
-(id)transform:(int)width andHeight:(int)height andFit:(UIFitState)fit andBackGroundColourHexCode:(NSString *)ColorHexCode{
    
    if(height > 6000 )
    {
        NSLog(@"Width can not be more then 6000");
        height = 6000;
        
    }
    if(width > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        width = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"w_%d,h_%d,%@,c_%@",width,height,[self getUIFitState:fit],ColorHexCode]];
    
    return  self;
    
}


-(id)crop:(int )value{
    if(value > 6000)
    {
        NSLog(@"Width can not be more then 6000");
        value = 6000;
        
    }
    
    
    [self appendString:[NSString stringWithFormat:@"r_%d",value]];
    return  self;
}

-(id)cropMax{
    
    
    [self appendString:[NSString stringWithFormat:@"r_max"]];
    
    return  self;
}



-(id)quality:(int )value{
    if(value > 6000)
    {
        NSLog(@"Quality value cannot be more then 6000");
        value = 6000;
        
    }
    [self appendString:[NSString stringWithFormat:@"quality_%d",value]];
    return  self;
}
-(id)grayScale{
    
    
    [self appendString:[NSString stringWithFormat:@"grayscale"]];
    return  self;
}
-(id)invert{
    
    
    [self appendString:[NSString stringWithFormat:@"invert"]];
    return  self;
}
-(id)brightness:(int )value{
    
    
    
    
    [self appendString:[NSString stringWithFormat:@"bright_%d",value]];
    return  self;
}
-(id)contrast:(int )value{
    if(value > 6000)
    {
        NSLog(@"contrast value cannot be more then 6000");
        value = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"contrast_%d",value]];
    return  self;
}
-(id)brightness:(int )value andContrast:(int )contrast
{
    if(value > 6000)
    {
        NSLog(@"Brightness can not be more then 6000");
        value = 6000;
        
    }
    if(contrast > 6000)
    {
        NSLog(@"Contrast can not be more then 6000");
        contrast = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"bright_%d,contrast_%d",value,contrast]];
    return  self;
}

-(id)flip:(int )value{
    if(value > 6000)
    {
        NSLog(@"Flip can not be more then 6000");
        value = 6000;
        
    }
    [self appendString:[NSString stringWithFormat:@"flip_%d",value]];
    return  self;
}
-(id)flipType:(UIFlipState )type{
    
    
    [self appendString:[NSString stringWithFormat:@"%@",[self getFlipState:type]]];
    return  self;
}



-(id)rotate:(int )value{
    if(value > 6000)
    {
        NSLog(@"Rotate can not be more then 6000");
        value = 6000;
        
    }
    
    [self appendString:[NSString stringWithFormat:@"rotate_%d",value]];
    return  self;
}




-(id)insertImage:(NSString *)imageUrl{
    
    
    [self appendString:[NSString stringWithFormat:@"oi-%@",imageUrl]];
    
    return self;
}

-(id)insertImage:(NSString *)imageUrl andPositionX :(int)X andPositionY :(int)Y{
    
    
    
    [self appendString:[NSString stringWithFormat:@"oi-%@,x_%d,y_%d",imageUrl,X,Y]];
    return  self;
    
}


-(id)insertText:(NSString *)inserttext andPositionX :(int)X andPositionY :(int)Y andSize:(int)size andStyle:(UIFONTSTYLE)style andColor:(UICOLORLIST )color{
    if(X > 6000)
    {
        NSLog(@"PositionX can not be more then 6000");
        X = 6000;
        
    }
    if(Y > 6000)
    {
        NSLog(@"PositionY can not be more then 6000");
        Y = 6000;
        
    }
    if(size > 6000)
    {
        NSLog(@"Size can not be more then 6000");
        size = 6000;
        
    }
    
    NSString *operationOrder;
    operationOrder = inserttext;
    if(inserttext.length == 0){
        NSLog(@"Please insert Text to perform InsertText");
    }
   
    
    
    [self appendString:[NSString stringWithFormat:@"ot-%@,x_%d,y_%d,size_%d,style_%@,c_%@",inserttext,X,Y,size,[self getUIFont_Style:style],[self getUIColor:color]]];
    
    
    return  self;
}



-(void) appendString : (NSString *)value{
    
    
    if(self.allValue.length ==0){
        self.allValue = value;
        
    }else{
        self.allValue = [self.allValue stringByAppendingString:value];
        
    }
    NSLog(@"efvdev %@",self.allValue);
    
}

-(NSString *)getAccountID{

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSString *amendId = dict[@"AmendID"];
    return amendId;
}

-(NSString *)getImageByURL:(NSString *)imageURL{
  
    return  [NSString stringWithFormat:@"http://amend.cloud/%@/fetch/%@/%@",[self getAccountID],self.allValue,imageURL];
}



-(NSString *)getImage:(NSString *)imageID;
{
    NSLog(@"ImageURL %@",[NSString stringWithFormat:@"http://amend.cloud/%@/image/%@/%@",[self getAccountID],self.allValue,imageID]);
    return  [NSString stringWithFormat:@"http://amend.cloud/%@/image/%@/%@",[self getAccountID],self.allValue,imageID];
}


-(NSString *)getUIAlignmentWidth:(int)Align{
    
    NSString *alignType;
    if(Align==0){
        alignType =@"align_top";
    }else if(Align == 1){
        alignType = @"align_bottom";
    }else if(Align == 2){
        alignType = @"align_center";
    }
    return alignType;
}
-(NSString *)getUIalighmentHeightStyle:(int)Align{
    
    NSString *alignType;
    if(Align==0){
        alignType =@"align_left";
    }else if(Align == 1){
        alignType = @"align_right";
    }else if(Align == 2){
        alignType = @"align_center";
    }
    return alignType;
}


-(NSString *)getUIalighmentInsideStyle:(int)Align{
    
    NSString *alignType;
    if(Align==0){
        alignType =@"align_top";
    }else if(Align == 1){
        alignType = @"align_bottom";
    }else if(Align == 2){
        alignType = @"align_left";
    }else if(Align == 3){
        alignType = @"align_right";
    }else if(Align == 4){
        alignType = @"align_center";
    }
    
    return alignType;
}


-(NSString *)getFlipState:(int)FlipStypeCode{
    
    
    NSString *StyleType;
    
    if(FlipStypeCode==0){
        StyleType = @"flip_x";
    }else if(FlipStypeCode == 1){
        StyleType = @"flip_y";
    }else if(FlipStypeCode == 2){
        StyleType = @"flip_xy";
    }
    
    
    return StyleType;
}
-(NSString *)getUIFitState:(int)fit{
    
    NSString *fitType;
    if(fit==0){
        fitType =@"fit_xy";
    }else if(fit == 1){
        
        
        fitType = @"fit_width";
        
    }else if(fit == 2){
        
        fitType = @"fit_height";
        
        
    }else if(fit == 3){
        
        fitType = @"fit_fill";
        
        
    }else if(fit == 4){
        
        
        fitType = @"fit_inside";
        
    }
    
    return fitType;
}

-(NSString *)getUIFont_Style:(int)UIFONTSTYLE{
    
    NSString *styleType;
    if(UIFONTSTYLE==0){
        styleType =@"normal";
    }else if(UIFONTSTYLE == 1){
        styleType = @"bold";
    }else if(UIFONTSTYLE == 2){
        styleType = @"italic";
    }else if(UIFONTSTYLE == 3){
        styleType = @"underline";
    }else if(UIFONTSTYLE == 4){
        styleType = @"normal";
    }
    
    return styleType;
}



-(NSString *)getUIColor:(int)colorCode{
    
    NSString *color;
    if(colorCode==0){
        color =@"white";
    }else if(colorCode == 1){
        color = @"silver";
    }else if(colorCode == 2){
        color = @"gray";
    }else if(colorCode == 3){
        color = @"black";
    }else if(colorCode == 4){
        color = @"red";
    } if(colorCode==5){
        color =@"maroon";
    }else if(colorCode == 6){
        color = @"yellow";
    }else if(colorCode == 7){
        color = @"olive";
    }else if(colorCode == 8){
        color = @"lime";
    }else if(colorCode == 9){
        color = @"green";
    }else if(colorCode==10){
        color =@"aqua";
    }else if(colorCode == 11){
        color = @"teal";
    }else if(colorCode == 12){
        color = @"blue";
    }else if(colorCode == 13){
        color = @"navy";
    }else if(colorCode == 14){
        color = @"fuchsia";
    }else if(colorCode==15){
        color =@"purple";
    }
    
    
    return color;
}


-(id)initWithDelegate:(id)delegate andImage: (UIImage *)image andReqCode:(int) reqCode andAccessKey:(NSString *)accessKey andAccessSecret:(NSString *)accessSecret{
    self = [self init];
    self.delegate = delegate;
    self.image = image;
    self.reqCode = reqCode;
    self.accessKey = accessKey;
    self.accessSecret = accessSecret;
    
    
    return self;
}

- (NSString *)ConvertImageintoBase64:(UIImage *)image {
    return [UIImagePNGRepresentation(image) base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}


-(NSString *)ConvertImageintoByteStream:(UIImage *)image{
    
    
    NSData *data = UIImagePNGRepresentation(image);
    NSUInteger len = data.length;
    uint8_t *bytes = (uint8_t *)[data bytes];
    NSMutableString *result = [NSMutableString stringWithCapacity:len * 3];
    [result appendString:@"["];
    for (NSUInteger i = 0; i < len; i++) {
        if (i) {
            [result appendString:@","];
        }
        [result appendFormat:@"%d", bytes[i]];
    }
    [result appendString:@"]"];
    
    return result;
    
    
}
-(void) executeWithBase64{
    self.data =[self ConvertImageintoBase64:self.image];
    [self execute];
}
-(void) executeWithBase64:(NSString *)imageName{
    self.data =[self ConvertImageintoBase64:self.image];
    self.imageName = imageName;
    
    [self execute];
}
-(void) executeWithByteArray{
    self.data =[self ConvertImageintoByteStream:self.image];
    [self execute];
}

-(void) execute{
    
    @try{
        NSDictionary *headers = @{ @"content-type": @"application/json",
                                   @"cache-control": @"no-cache",
                                   @"AccessKey" : self.accessKey,
                                   @"AccessSecret" : self.accessSecret
                                   };
        
        NSDictionary *parameters;
        
        if(self.imageName.length  == 0){
         parameters   = @{@"ImageBase64":self.data
                };
            
        
        }else{
            parameters   = @{@"ImageBase64":self.data,
                             @"ImageName"  : self.imageName
                             };
        }
        
        NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString: [NSString stringWithFormat:@"http://amend.cloud/%@/upload",[self getAccountID]]]
                                                               cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                           timeoutInterval:10.0];
        [request setHTTPMethod:@"POST"];
        [request setAllHTTPHeaderFields:headers];
        [request setHTTPBody:postData];
        
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                        [[NSOperationQueue mainQueue] addOperationWithBlock:^
                                                         {
                                                             if (error) {
                                                                 NSLog(@"%@", error);
                                                                 if(self.delegate!=NULL){
                                                                     [self.delegate didfailedWithError:@"ErrorMessage" andReqCode:self.reqCode];
                                                                 }
                                                             } else {
                                                                 NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                                 NSLog(@"%@", httpResponse);
                                                                 NSMutableDictionary *object = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                                                                 if(self.delegate!=NULL){
                                                                     int statusCode = (int)httpResponse.statusCode;
                                                                     if(statusCode == 200){
                                                                         [self.delegate didReceiveData:[NSString stringWithFormat:@"%@",object[@"ImageName"]] andReqCode:self.reqCode];
                                                                     }else{
                                                                         [self.delegate didfailedWithError:@"Something went Wrong." andReqCode:self.reqCode];
                                                                     }
                                                                 }
                                                             }
                                                         }];
                                                    }];
        [dataTask resume];
    }@catch(NSException *ex){
        [self.delegate didfailedWithError:@"Something went Wrong." andReqCode:self.reqCode];
        
    }
    
}


@end
