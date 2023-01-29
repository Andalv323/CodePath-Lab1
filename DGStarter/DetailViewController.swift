//
//  DetialViewController.swift
//  DGStarter
//
//  Created by user230516 on 1/28/23.
//

import UIKit

class DetailViewController: UIViewController {
    var dinosaur: Dinosaur?

    @IBOutlet weak var dinosaurFact4: UILabel!
    @IBOutlet weak var dinosaurFact3: UILabel!
    @IBOutlet weak var dinosaurFact2: UILabel!
    @IBOutlet weak var dinosaurFact1: UILabel!
    @IBOutlet weak var dinosaurHeight: UILabel!
    @IBOutlet weak var dinosaurWeight: UILabel!
    @IBOutlet weak var dinosaurNameLabel: UILabel!
    @IBOutlet weak var dinosaurTypeLabel: UILabel!
    @IBOutlet weak var dinosaurImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let dinosaur = dinosaur {
            print(dinosaur.name)
            dinosaurImageView.image = dinosaur.image
            dinosaurNameLabel.text = dinosaur.name
            dinosaurTypeLabel.text = dinosaur.type
            dinosaurWeight.text = String(dinosaur.weight) + " KG"
            dinosaurHeight.text = String(dinosaur.height) + " M"
            dinosaurFact1.text = String(dinosaur.diet)
            dinosaurFact2.text = String(dinosaur.era)
            dinosaurFact3.text = String(dinosaur.region)
            dinosaurFact4.text = String(dinosaur.speed) + " mph"
        }
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
