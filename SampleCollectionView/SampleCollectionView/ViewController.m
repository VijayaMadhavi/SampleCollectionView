//
//  ViewController.m
//  SampleCollectionView
//
//  Created by Vijaya Madhavi on 09/06/22.
//

#import "ViewController.h"
#import "SampleCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSString *selectedValue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureCollectionView];
}

#pragma mark - Class Methods

- (void)configureCollectionView {
    
    self.myCollectionView.dataSource = self;
    self.myCollectionView.delegate = self;
    
    [self.myCollectionView registerNib:[UINib nibWithNibName:@"SampleCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"sampleCell"];
}

#pragma mark - IBActions

- (IBAction)SaveButton:(id)sender {
    
    _showLabel.text = selectedValue;
}


#pragma mark - CollectionView DataSource and Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SampleCollectionViewCell *cell = (SampleCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"sampleCell" forIndexPath:indexPath];
    if(cell == nil) {
        cell = [[SampleCollectionViewCell alloc] init];
    }
    
    cell.rowLabel.text = [NSString stringWithFormat:@"Row %ld",indexPath.row+1];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
   // return CGSizeMake(CGRectGetWidth(collectionView.frame), (CGRectGetHeight(collectionView.frame)));
    
     return CGSizeMake(100, 100);
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    selectedValue = [NSString stringWithFormat:@"Row %ld",indexPath.row+1];
    SampleCollectionViewCell *cell = (SampleCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    //[self.myCollectionView reloadData];
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    SampleCollectionViewCell *cell = (SampleCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    
}

@end
