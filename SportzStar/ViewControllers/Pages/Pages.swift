//
//  Pages.swift
//  SportzStar
//
//  Created by Mohit Chaudhary on 05/07/21.
//

import UIKit

class Pages: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var pagescon = [UIViewController]()
    var index1 = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        self.dataSource = self
    
        pagescon = [getViewController(withIdentifier: "Page1"),getViewController(withIdentifier: "Page2"),getViewController(withIdentifier: "Page3")]
        
        if let firstVC = pagescon.first
        {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
       // updateview()
    }
    
    func updateview() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
            self.index1 = (self.index1+1) > 2 ? 0 : self.index1 + 1
            self.setViewControllers([self.pagescon[self.index1]], direction: .forward, animated: true, completion: nil)
            self.updateview()
        })
    }
    
    func getViewController(withIdentifier identifier: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pagescon.firstIndex(of: viewController) else { return nil }
        index1 = viewControllerIndex
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else { return pagescon.last }
        guard pagescon.count > previousIndex else { return nil        }
        return pagescon[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pagescon.firstIndex(of: viewController) else { return nil }
        index1 = viewControllerIndex
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pagescon.count else { return pagescon.first }
        guard pagescon.count > nextIndex else { return nil}
        return pagescon[nextIndex]
    }
}


