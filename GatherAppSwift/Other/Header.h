//
//  Header.h
//  GatherAppSwift
//
//  Created by apple on 2018/4/12.
//  Copyright © 2018年 Apple. All rights reserved.
//


//  在Swift项目中创建OC类，使用桥头文件
//创建桥头连接文件
//1.command+N 打开新建文件窗口：ios->source->Header File，创建一个桥头文件Header File
//2.创建出来之后，并不是直接就可以用，需要做另外一步操作
//(1)选择targest
//(2)选择buildsetting
//(3)搜索bridg (Objective-C Bridging Header 右边更改格式为 ： $(SRCROOT)/项目名/header文件名.h)
//工程里格式是：$(SRCROOT)/GatherAppSwift/Other/Header.h
#ifndef Header_h
#define Header_h

#import "ObjCViewController.h"




#endif /* Header_h */
