//
//  OverviewViewController.swift
//  weathr
//
//  Created by Héloïse Le Lez on 04/10/2023.
//

import UIKit

class OverviewViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var weatherImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let item1 = UIBarButtonItem(barButtonSystemItem: .play, target: self, action:  #selector(self.goToAstronomy))
        
        let item2 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        
        self.navigationItem.rightBarButtonItems = [item1, item2]
        
        scrollview.delegate = self
        scrollview.isDirectionalLockEnabled = true
//        self.weatherImage.image = UIImage()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //if scrollview.contentOffset.x>0 {
//           scrollview.contentOffset.x = 0
       // }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func goToAstronomy() {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "astronomy") as? AstronomyViewController {
            
            // Afficher un modal
            //self.present(vc, animated: true, completion: nil)
            
            // Afficher un push navigation
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }

}
