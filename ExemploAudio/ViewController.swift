//
//  ViewController.swift
//  ExemploAudio
//
//  Created by Kelvin Estagiario on 7/8/16.
//  Copyright © 2016 Kelvin Estagiario. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("rach", ofType: "mp3")
        
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
                player.play()
            }catch{
                //Process error
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

