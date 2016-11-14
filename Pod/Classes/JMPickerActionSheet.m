//
//  JMPickerActionSheet.m
//  Pods
//
//  Created by jerome morissard on 02/06/2015.
//
//

#import "JMPickerActionSheet.h"

@implementation JMPickerActionSheet

+ (void)showPickerActionSheetElements:(NSArray *)elements didSelectBlock:(JMActionSheetSelectedItemBlock)didSelectBlock title:(NSString *)title inViewController:(UIViewController *)viewController
{
    JMActionSheetDescription *desc = [self pickerDescriptionWithElements:elements
                                                          didSelectBlock:didSelectBlock
                                                                   title:title];
    [JMPickerActionSheet showActionSheetDescription:desc
                                   inViewController:viewController
                                              style:JMActionSheetStyleEdgeToEdge];
}

+ (void)showPickerActionSheetElements:(NSArray *)elements didSelectBlock:(JMActionSheetSelectedItemBlock)didSelectBlock title:(NSString *)title inViewController:(UIViewController *)viewController fromView:(UIView *)view
{
    JMActionSheetDescription *desc = [self pickerDescriptionWithElements:elements
                                                          didSelectBlock:didSelectBlock
                                                                   title:title];
    [JMPickerActionSheet showActionSheetDescription:desc
                                   inViewController:viewController
                                           fromView:view
                                              style:JMActionSheetStyleEdgeToEdge];
}

+ (void)showPickerActionSheetElements:(NSArray *)elements didSelectBlock:(JMActionSheetSelectedItemBlock)didSelectBlock title:(NSString *)title inViewController:(UIViewController *)viewController fromView:(UIView *)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections
{
    JMActionSheetDescription *desc = [self pickerDescriptionWithElements:elements
                                                          didSelectBlock:didSelectBlock
                                                                   title:title];
    [JMPickerActionSheet showActionSheetDescription:desc
                                   inViewController:viewController
                                           fromView:view
                           permittedArrowDirections:arrowDirections
                                              style:JMActionSheetStyleEdgeToEdge];
}

+ (JMActionSheetDescription *)pickerDescriptionWithElements:(NSArray *)elements didSelectBlock:(JMActionSheetSelectedItemBlock)didSelectBlock title:(NSString *)title
{
    JMActionSheetDescription *desc = [[JMActionSheetDescription alloc] init];
    desc.title = title;
    
    JMActionSheetPickerItem *pickerItem = [[JMActionSheetPickerItem alloc] init];
    pickerItem.elements = elements;
    pickerItem.pickerActionBlock = didSelectBlock;
    desc.items = @[pickerItem];
    return desc;
}

@end
