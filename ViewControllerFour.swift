//
//  ViewControllerFour.swift
//  testapp
//
//  Created by suriya taothongkom on 18/9/2565 BE.
//

import UIKit

class ViewControllerFour: UIViewController
, UITableViewDelegate ,
UITableViewDataSource

{
   
    
   
    @IBOutlet weak var Profile_view: UIView!
    @IBOutlet weak var CollectionView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
//        CollectionView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        CollectionView.delegate = self
        CollectionView.dataSource = self
        self.Profile_view.layer.cornerRadius =  Profile_view.frame.width/2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = CollectionView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DomeTableViewCell
        
        return Cell
   
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121
        
        
    }
  

}
