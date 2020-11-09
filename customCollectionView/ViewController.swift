//
//  ViewController.swift
//  customCollectionView
//
//  Created by STARKS on 11/8/20.
//  Copyright © 2020 STARKS. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let navigationBar = UINavigationBar()
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.backgroundColor = .red
        
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "Recepies "
        
        
        
        let rightButton = UIBarButtonItem(title: "Post Recepie", style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItem = rightButton
        
        
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
        navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        navigationBar.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        navigationBar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 3
        layout.itemSize = CGSize(width: (view.frame.size.width/2)-4, height: (view.frame.size.width/2)-4)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.delegate = self

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
     
        collectionView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor,constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 2).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -2).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath)
        
        return cell
    }
  
    
    
}
