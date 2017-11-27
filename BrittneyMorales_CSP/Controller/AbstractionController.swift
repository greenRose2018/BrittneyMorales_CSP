//
//  AbstractionController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AbstractionController: UIPageViewController, UIPageViewControllerDataSource
{
    //MARK: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionController(abstractionLevel: "Block"),
            self.newAbstractionController(abstractionLevel: "Java"),
            self.newAbstractionController(abstractionLevel: "ByteCode"),
            self.newAbstractionController(abstractionLevel: "Binary"),
            self.newAbstractionController(abstractionLevel: "Gate")]
    }()
    
    //Helper method to retrieve the correct ViewController
    private func newAbstractionController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    //MARK:- Required Protocol methods for UIPageViewControllerDataSource
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
        else
        {
          return nil
        }
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
        else
        {
            return nil
        }
        
        guard nextIndex < orderedAbstractionViews.count
        else
        {
            return orderedAbstractionViews.first
        }
        
        return orderedAbstractionViews[nextIndex]
    }
    
    //MARK:- Support for dots in the UIPageViewConoller
    public func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
    
    }
    
    override func didReceiveMemoryWarning() {
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
