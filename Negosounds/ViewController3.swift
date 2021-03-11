//
//  ViewController3.swift
//  Negosound
//
//  Created by Danila Kokin on 05.04.2020.
//  Copyright © 2020 Danila Kokin. All rights reserved.
//

import UIKit
import AVFoundation
//import GoogleMobileAds

class ViewController3: UIViewController {

   // @IBOutlet weak var BannerView3: GADBannerView!
    
    var audioplayer2 = AVAudioPlayer()
    override func viewDidLoad()
    {
        super.viewDidLoad()
   //     BannerView3.adUnitID = "ca-app-pub-3940256099942544/2934735716"
    //    BannerView3.rootViewController = self
    //    BannerView3.load(GADRequest())
    }
    
    @IBAction func prsound(_ sender: Any)
    {
        let paths2 = Bundle.main.path(forResource: "Sound3", ofType: "mp3")
        let url2 = URL(fileURLWithPath: paths2!)
        
        do
        {
            audioplayer2 = try AVAudioPlayer(contentsOf: url2)
            audioplayer2.play()
        }
        catch
        {
        }
    }
    @IBSegueAction func stopplayer(_ coder: NSCoder) -> ViewController2? {
        audioplayer2.stop()
        return ViewController2(coder: coder)
    }
    
}
