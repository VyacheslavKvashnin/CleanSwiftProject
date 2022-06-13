//
//  PostRouter.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol PostRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol PostDataPassing {
    var dataStore: PostDataStore? { get }
}

class PostRouter: NSObject, PostRoutingLogic, PostDataPassing {
    
    weak var viewController: PostViewController?
    var dataStore: PostDataStore?
    
    // MARK: Routing
    /*
    func routeToSomewhere(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
            navigateToSomewhere(source: viewController!, destination: destinationVC)
        }
    }
    */
    
    // MARK: Navigation
    /*
    func navigateToSomewhere(source: PostViewController, destination: SomewhereViewController) {
        source.show(destination, sender: nil)
    }
    */
    
    // MARK: Passing data
    /*
    func passDataToSomewhere(source: PostDataStore, destination: inout SomewhereDataStore) {
        destination.name = source.name
    }
    */
}