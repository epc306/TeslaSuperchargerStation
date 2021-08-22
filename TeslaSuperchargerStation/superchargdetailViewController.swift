//
//  superchargdetailViewController.swift
//  TeslaSuperchargerStation
//
//  Created by water on 2021/8/22.
//

import UIKit

class superchargdetailViewController: UIViewController {
    
    @IBOutlet weak var introTextView: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    
    
    let supercharge : Supercharger
    
    init?(coder: NSCoder, supercharge: Supercharger) {
        self.supercharge = supercharge
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = supercharge.name
        addressLabel.text = supercharge.address
        introTextView.text = supercharge.intro
        // Do any additional setup after loading the view.
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
