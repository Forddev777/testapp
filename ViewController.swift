//
//  ViewController.swift
//  testapp
//
//  Created by suriya taothongkom on 9/9/2565 BE.
//

import UIKit

class ViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource
, UICollectionViewDelegateFlowLayout

{
    
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var PageView: UIPageControl!
    @IBOutlet weak var CollectionButton: UICollectionView!
    private var myButtonsArray = ["All", "Concert", "Pub&restaurant", "Meeting" , "Bar" , "test"]
    var imgArray =  [UIImage(named: "forest3"),UIImage(named: "forest2"),UIImage(named: "forest1")]
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self
        CollectionButton.delegate = self
        CollectionButton.dataSource = self
        PageView.numberOfPages = imgArray.count
        PageView.currentPage = 0
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(changerImage), userInfo: nil, repeats: true)
    }
    
    @objc func changerImage() {
        if counter < imgArray.count {
            let index  = IndexPath.init(item: counter, section: 0)
            self.CollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true )
            PageView.currentPage = counter
            counter += 1
        }else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.CollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            PageView.currentPage = counter
            counter = 1
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == CollectionView ){
            return imgArray.count
        }
        return myButtonsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
            if(collectionView == CollectionView ){
                if let vc = cell.viewWithTag(111) as? UIImageView {
                    vc.image = imgArray[indexPath.row]
                }
            }
            if(collectionView == CollectionButton ){
                let cell2 = CollectionButton.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! CollectionViewButtonCell
                cell2.label1.text = myButtonsArray[indexPath.item]
                return cell2
            }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == CollectionView ){
            let size = CollectionView.frame.size
            return CGSize(width: size.width , height: size.height)
        }
        //let size = CollectionView.frame.size
        
        return CGSize(width: 100, height:  40 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}




