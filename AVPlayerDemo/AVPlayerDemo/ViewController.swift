//
//  ViewController.swift
//  AVPlayerDemo
//
//  Created by Priyanka on 10/05/21.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnStart(_ sender: Any) {
        
       /*guard let path = Bundle.main.path(forResource: "SamVid", ofType:"mp4") else {
            debugPrint("video.m4v not found")
            return
        }
         
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
         
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }*/
        
         audioPlayer()
        
    }
    
    //urlSession(_, session: URLSession, dataTask: URLSessionDataTask, didReceive, data: Data)
    
    func audioPlayer() {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
             
            player = AVPlayer(url: URL.init(string: "https://oakstudio-usso.streaming.media.azure.net/7a9a4d8f-fdfb-4a77-b82f-faf6565a2cc1/1080_Test.ism/manifest(format=m3u8-aapl)")!)

              //create the player screen

              let controller = AVPlayerViewController()
              controller.player = player
              controller.showsPlaybackControls = false
            
              self.addChild(controller)
              let screenSize = UIScreen.main.bounds.size
              let videoFrame = CGRect(x: 0, y: 130, width: screenSize.width, height: (screenSize.height - 130) / 2)
            
              controller.view.frame = videoFrame
              self.view.addSubview(controller.view)
              

              player?.play()
            } catch {
            }
    }
}

        

