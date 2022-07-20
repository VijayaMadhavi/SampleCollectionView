//
//  SampleCollectionViewCell.h
//  SampleCollectionView
//
//  Created by Vijaya Madhavi on 09/06/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *rowLabel;

//@property (nonatomic, strong) NSLayoutConstraint *cellWidthConstraint;
//- (void)setCellWidth:(CGFloat) width;

@end

NS_ASSUME_NONNULL_END
