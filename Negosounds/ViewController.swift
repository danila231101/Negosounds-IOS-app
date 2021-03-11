//
//  ViewController.swift
//  Negosound
//
//  Created by Danila Kokin on 05.04.2020.
//  Copyright © 2020 Danila Kokin. All rights reserved.
//

import UIKit
import AVFoundation
//import GoogleMobileAds

class ViewController: UIViewController {

   
    
    //@IBOutlet weak var Bannerview: GADBannerView!
    
    var audioplayer = AVAudioPlayer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Bannerview.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        //Bannerview.rootViewController = self
        //Bannerview.load(GADRequest())
    }

    
    @IBAction func actionofbutton(_ sender: Any)
    {
        
        let paths = Bundle.main.path(forResource: "Sound1", ofType: "mp3")
        let url = URL(fileURLWithPath: paths!)
        do
        {
            audioplayer = try AVAudioPlayer(contentsOf: url)
            audioplayer.play()
        }
        catch
        {
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        let paths = Bundle.main.path(forResource: "Sound1", ofType: "mp3")
        let url = URL(fileURLWithPath: paths!)
        do
        {
            audioplayer = try AVAudioPlayer(contentsOf: url)
            audioplayer.play()
        }
        catch
        {
        }
    }
    
}

