//
//  CreativityController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection :[UIImage?] =
    {
     
        return [
            UIImage(named: "Haiku"),
            UIImage(named: "drawing"),
            UIImage(named: "tiny pikachu"),
            UIImage(named: "tiny pikachu"),
            UIImage(named: "tiny pikachu"),
            UIImage(named: "Haiku"),
            UIImage(named: "Haiku"),
            UIImage(named: "drawing"),
            UIImage(named: "tiny pikachu")
        ]
    }
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet //property watcher, checks values and makes something happened
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
    
    //MARK: Lifecycle methods
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    //MARK:- UICollectionView methods
    override public func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return artSelection.count
    }
    
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
