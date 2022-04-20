//
//  OnBoardingContainerViewController.swift
//  PlatziFinanzas
//
//  Created by Joaquin Segovia on 14/4/22.
//
import UIKit

class OnBoardingContainerViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBoarding",
              let destination = segue.destination as? OnBoardingViewController else {
            return
        }
        destination.pageControl = pageControl
    }
}
