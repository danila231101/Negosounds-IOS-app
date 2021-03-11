//
//  ViewController2.swift
//  Negosound
//
//  Created by Danila Kokin on 05.04.2020.
//  Copyright © 2020 Danila Kokin. All rights reserved.
//

import UIKit
import AVFoundation
//import GoogleMobileAds

class ViewController2: UIViewController {

 //   @IBOutlet weak var BannerVeiw2: GADBannerView!

    var audioplayer1 = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

       // BannerVeiw2.adUnitID = "ca-app-pub-3940256099942544/2934735716"
       // BannerVeiw2.rootViewController = self
        //BannerVeiw2.load(GADRequest())
    }
    

    @IBAction func maksound(_ sender: Any)
    {
        let paths1 = Bundle.main.path(forResource: "sound2", ofType: "mp3")
        let url1 = URL(fileURLWithPath: paths1!)
        do
        {
            audioplayer1 = try AVAudioPlayer(contentsOf: url1)
            audioplayer1.play()
        }
        catch
        {
        }
    }
    
    @IBSegueAction func stopplayer(_ coder: NSCoder) -> ViewController3? {
        audioplayer1.stop()
        return ViewController3(coder: coder)
    }
    
    @IBSegueAction func stoplayerleft(_ coder: NSCoder) -> ViewController? {
        audioplayer1.stop()
        return ViewController(coder: coder)
    }
}
