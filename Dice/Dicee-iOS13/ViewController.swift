

import UIKit

class ViewController: UIViewController {
    //Allows to reference objevts
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*Two ways to add iamge view
        1. #imageLiteral(
        2. UIImage(named : "name")
        Format :  WHO.WHAT =  VALUE */
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = UIImage(named: "DiceTwo")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    
        
        
        
    }
    
}

