//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Asad Aftab on 31.08.23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var cardImageView: UIImageView!
    
    
    // Single Outlet
    // @IBOutlet var stopButton: UIButton!
    // @IBOutlet var restartButton: UIButton!
    // @IBOutlet var rulesButton: UIButton!
    
    
    var timer: Timer!
    var cards: [UIImage] = Card.allValues
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // When you want separate properties to be added
        //stopButton.layer.cornerRadius = 8
        //restartButton.layer.cornerRadius = 8
        //rulesButton.layer.cornerRadius = 8
        startTimer()
//        for button in buttons {
//            button.layer.cornerRadius = 8
//        }
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        // stopButton.setTitle("I've been tapped", for: .normal)
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
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
