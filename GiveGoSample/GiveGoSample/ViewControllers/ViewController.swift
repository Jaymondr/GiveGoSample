//
//  ViewController.swift
//  GiveGoSample
//
//  Created by Jaymond Richardson on 5/3/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK: - Outlets
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var PageControl: UIPageControl!
    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var ApplyButton: UIButton!
    @IBOutlet weak var expertStackViewText: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        addStyle()
        ScrollView.delegate = self

    }
    
    //MARK: - Properties
    var images: [String] = ["1","2","3","4"]
    var frame = CGRect(x: 0,y: 0,width: 0,height: 0)
    
  
    //MARK: - Functions
    func updateViews() {
        //page control
        PageControl.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = ScrollView.frame.size.width * CGFloat(index)
            frame.size = ScrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.ScrollView.addSubview(imgView)
        }
        
        //scroll view
        ScrollView.contentSize = CGSize(width: ScrollView.frame.size.width * CGFloat(images.count), height: ScrollView.frame.size.height)
        ScrollView.showsHorizontalScrollIndicator = false
        //Logo image
        logoImage.image = UIImage(named: "Logo")
        
    }
    
    private func addStyle() {
        //Sign up button
        self.SignUpButton.backgroundColor = CustomColors.customBlue
        self.SignUpButton.titleLabel?.textColor = .white
        self.SignUpButton.addCornerRadius()
        //Login Button
        self.LoginButton.titleLabel?.textColor = CustomColors.customBlue
        self.LoginButton.backgroundColor = .clear
        //Expert Stack View
        expertStackViewText.textColor = CustomColors.customBlue
        ApplyButton.titleLabel?.textColor = CustomColors.customBlue
        //Page Control
        self.PageControl.pageIndicatorTintColor = CustomColors.pageIndicatorTint
        
        //Background
        self.view.backgroundColor = CustomColors.customBackground

    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        PageControl.currentPage = Int(pageNumber)
        
    }
}//End of class
