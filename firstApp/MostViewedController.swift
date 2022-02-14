//
//  MostViewedController.swift
//  firstApp
//
//  Created by Adam Roberts on 2/7/22.
//

import UIKit

let imagesURL = ["https://www.planetware.com/photos-large/F/france-paris-louvre.jpg", "https://www.planetware.com/photos-large/F/france-paris-notre-dame.jpg", "https://www.planetware.com/wpimages/2021/02/france-paris-top-attractions-avenue-champs-elysees.jpg", "https://www.planetware.com/photos-large/F/france-paris-luxembourg-gardens.jpg"]
class Downloader{
    class func downloadImageWithURL(url: String) -> UIImage{
        let data = NSData(contentsOf: NSURL(string: url)! as URL)
        return UIImage(data: data! as Data)!
        
    }
}

class MostViewedController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    
    
    var queue = OperationQueue()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func downloadImages(_ sender: Any) {
        
        let operation1 = BlockOperation{
            let img1 = Downloader.downloadImageWithURL(url: imagesURL[0])
            
            OperationQueue.main.addOperation {
                self.image1.image = img1
            }
        }
        let operation2 = BlockOperation{
            let img1 = Downloader.downloadImageWithURL(url: imagesURL[1])
            
            OperationQueue.main.addOperation {
                self.image2.image = img1
            }
        }
        let operation3 = BlockOperation{
            let img1 = Downloader.downloadImageWithURL(url: imagesURL[2])
            
            OperationQueue.main.addOperation {
                self.image3.image = img1
            }
        }
        let operation4 = BlockOperation{
            let img1 = Downloader.downloadImageWithURL(url: imagesURL[3])
            
            OperationQueue.main.addOperation {
                self.image4.image = img1
            }
        }
        queue.addOperation (operation1)
        operation1.completionBlock = {
            self.queue.addOperation(operation2)
        }
        //queue.addOperation (operation2)
        queue.addOperation (operation3)
        operation3.addDependency(operation2)
        queue.addOperation (operation4)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
