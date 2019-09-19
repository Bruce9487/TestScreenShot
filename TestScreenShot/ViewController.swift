//
//  ViewController.swift
//  TestScreenShot
//
//  Created by APP技術部-陳冠志 on 2019/9/11.
//  Copyright © 2019 Bruce Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        view.backgroundColor = UIColor.gray
        view.isHidden = true
        self.view.addSubview(view)

        let testView = self.view.snapshotView(afterScreenUpdates: true)
        
        let mainQueue = OperationQueue.main
        NotificationCenter.default.addObserver(forName: UIApplication.userDidTakeScreenshotNotification, object: nil, queue: mainQueue) { notification in
        
            print(notification)
            print(notification.object)
        }
    }


}

