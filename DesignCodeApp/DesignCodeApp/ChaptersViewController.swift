//
//  ChaptersViewController.swift
//  DesignCodeApp
//
//  Created by WebIQ Stagiaire on 30-08-18.
//  Copyright © 2018 Lisa van der Goes. All rights reserved.
//

import UIKit

class ChaptersViewController: UIViewController {
    @IBOutlet weak var chapter1CollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chapter1CollectionView.delegate = self
        chapter1CollectionView.dataSource = self
        
    }
    

}

extension ChaptersViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
        let section = sections[indexPath.row]
        cell.titleLabel.text = section["title"]
        cell.captionLabel.text = section["caption"]
        cell.coverImageView.image = UIImage(named: section["image"]!)
        
        cell.layer.transform = animateCell(cellFrame: cell.frame)
        return cell
}
}

extension ChaptersViewController: UIScrollViewDelegate{
    
    func scrollViewDidScroll( _ scrollView: UIScrollView){
        
        if let collectionView = scrollView as? UICollectionView {
            for cell in collectionView.visibleCells as! [SectionCollectionViewCell]{
                let indexPath = collectionView.indexPath(for: cell)!
                let attributes = collectionView.layoutAttributesForItem(at: indexPath)!
                let cellFrame = collectionView.convert(attributes.frame, to: view)
                let translationX = cellFrame.origin.x / 5
                //cell.coverImageView.transform =  CGAffineTransform(translationX: translationX, y: 0)
                
                
                cell.layer.transform = animateCell(cellFrame: cellFrame)
            }
        }
    }
        
    
    func animateCell(cellFrame: CGRect) -> CATransform3D{
        let angleFromX = Double((-cellFrame.origin.x) / 10)
        let angle = CGFloat((angleFromX * Double.pi) / 180.0)
        var transform = CATransform3DIdentity
        transform.m34 = -1.0/1000
        let rotation = CATransform3DRotate(transform, angle, 0, 1, 0)
        
        var scaleFromX = (1000 - (cellFrame.origin.x - 200))
        let scaleMax: CGFloat = 1.0
        let scaleMin: CGFloat = 0.6
        if scaleFromX > scaleMax{
            scaleFromX = scaleMax
        }
        if scaleFromX < scaleMin {
            scaleFromX = scaleMin
        }
        let scale = CATransform3DScale(CATransform3DIdentity, scaleFromX, scaleFromX, 1)
        return CATransform3DConcat(rotation, scale)
    }
}

