//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {
    
    var  player : AVAudioPlayer?
    
    func playSound(value: String) {
        let url = Bundle.main.url(forResource: value, withExtension: "wav")!

        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func didTapped(_ sender: UIButton) {
        playSound(value: sender.titleLabel!.text!)
        //print(sender.titleLabel?.text ?? <#default value#>)
    }
    

}

