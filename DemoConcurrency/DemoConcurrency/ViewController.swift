//
//  ViewController.swift
//  DemoConcurrency
//
//  Created by ThietTB on 3/6/18.
//  Copyright © 2018 bipbipdinang. All rights reserved.
//

import UIKit
import Foundation

let imageURLs = ["http://www.planetware.com/photos-large/F/france-paris-eiffel-tower.jpg", "http://adriatic-lines.com/wp-content/uploads/2015/04/canal-of-Venice.jpg", "https://www.jqueryscript.net/images/Simplest-Responsive-jQuery-Image-Lightbox-Plugin-simple-lightbox.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNBH9qYupzMRbEK9XFWwHeP9gQyjtMGVoiLGP7eu4PDHqGU2sH"]

class Downloader {
    
    class func downloadImageWithURL(url:String) -> UIImage! {
        let url = URL(string: url)
        let data = try? Data(contentsOf: url!)
        if let image = data {
            let image  = UIImage(data: image)
            return image
        }
        return UIImage(named: "default")
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var iamge1: UIImageView!
    @IBOutlet weak var sliderLabel: UILabel!
    
    let blockOperationQueue = OperationQueue()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func cancle(_ sender: Any) {
        self.blockOperationQueue.cancelAllOperations()
    }
 
    @IBOutlet weak var cancel: UIBarButtonItem!
    
    @IBAction func changeSlider(_ sender: UISlider) {
        self.sliderLabel.text = "\(sender.value * 100.0)"
    }
    
    @IBAction func startDowload(_ sender: Any) {
//        let img1 = Downloader.downloadImageWithURL(url: imageURLs[0])
//        self.iamge1.image = img1
//
//        let img2 = Downloader.downloadImageWithURL(url: imageURLs[1])
//        self.image2.image = img2
//
//        let img3 = Downloader.downloadImageWithURL(url: imageURLs[2])
//        self.image3.image = img3
//
//        let img4 = Downloader.downloadImageWithURL(url: imageURLs[3])
//        self.image4.image = img4

        // dùng global queue
//        let globalQueue = DispatchQueue.global(qos: .default)
//        globalQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[0])
//            DispatchQueue.main.async {
//                self.iamge1.image = image
//            }
//        }
//        globalQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[1])
//            DispatchQueue.main.async {
//                 self.image2.image = image
//            }
//        }
//        globalQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[2])
//            DispatchQueue.main.async {
//                self.image3.image = image
//            }
//        }
//        globalQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[3])
//            DispatchQueue.main.async {
//                self.image4.image = image
//            }
//        }
        
        // dùng mainqueue : tạo 1 seriqueue mới chạy song song với main queue
        // tuy nhiên bị chậm hơn vì nó tải theo thứ tự 1 2 3 4.Tải xong thì nó mới tải cái khác
        // thuộc tính attributes cho phép mình custom cái queue này là serialQueue hay concurrentQueue
//        let serialQueue = DispatchQueue(label: "com.framgia.imageQueue", qos: .default, attributes:[], autoreleaseFrequency: .inherit, target: nil)
//        serialQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[0])
//            DispatchQueue.main.async {
//                self.iamge1.image = image
//            }
//        }
//        serialQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[1])
//            DispatchQueue.main.async {
//                self.image2.image = image
//            }
//        }
//        serialQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[2])
//            DispatchQueue.main.async {
//                self.image3.image = image
//            }
//        }
//        serialQueue.async {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[3])
//            DispatchQueue.main.async {
//                self.image4.image = image
//            }
//        }
        
        // sử dụng NSOperationQueue
        // ở đây ta dùng addOperation{block} để add 1 cái operation vào queue
//        let operationQueue = OperationQueue()
//        operationQueue.addOperation {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[0])
//            OperationQueue.main.addOperation({
//                self.iamge1.image = image
//            })
//        }
//        operationQueue.addOperation {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[1])
//            OperationQueue.main.addOperation({
//                self.image2.image = image
//            })
//        }
//        operationQueue.addOperation {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[2])
//            OperationQueue.main.addOperation({
//                self.image3.image = image
//            })
//        }
//        operationQueue.addOperation {
//            let image = Downloader.downloadImageWithURL(url: imageURLs[3])
//            OperationQueue.main.addOperation({
//                self.image4.image = image
//            })
//        }
        
        // ở đây ta sẽ dùng NSBlockOperation để làm tương tự.NSBlockOperation là 1 subclass của NSOperation
//        let blockOperationQueue = OperationQueue()
        let blockOperation = BlockOperation {
            let image = Downloader.downloadImageWithURL(url: imageURLs[0])
            OperationQueue.main.addOperation({
                self.iamge1.image = image
            })
        }
        blockOperation.completionBlock = {
            print("Operation 1 completed, cancelled:\(blockOperation.isCancelled) ")

        }
        
        
        blockOperationQueue.addOperation(blockOperation)
        
        
        let blockOperation2 = BlockOperation {
            let image = Downloader.downloadImageWithURL(url: imageURLs[1])
            OperationQueue.main.addOperation({
                self.image2.image = image
            })
        }
        blockOperation2.completionBlock = {
            print("blockOperation 2 completed")
        }
       
        blockOperationQueue.addOperation(blockOperation2)
        
        
        let blockOperation3 = BlockOperation {
            let image = Downloader.downloadImageWithURL(url: imageURLs[2])
            OperationQueue.main.addOperation({
                self.image3.image = image
            })
        }
        blockOperation3.completionBlock = {
            print("blockOperation 3 completed")
        }
       
        blockOperationQueue.addOperation(blockOperation3)
        
        let blockOperation4 = BlockOperation {
            let image = Downloader.downloadImageWithURL(url: imageURLs[3])
            OperationQueue.main.addOperation({
                self.image4.image = image
            })
        }
        blockOperation4.completionBlock = {
            print("blockOperation 4 completed")
        }
        
        blockOperationQueue.addOperation(blockOperation4)
        
        //Thêm sự phụ thuộc Dependency với operation 1 2 và 3. Tức là 3 phụ thuộc 2 phụ thuộc 1
        blockOperation2.addDependency(blockOperation)
        blockOperation3.addDependency(blockOperation2)
    }
}

