//
//  audioPlauer.swift
//  TestApp
//
//  Created by huf on 01.09.2022.
//

import Foundation
import AVFoundation

var audioPlauer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlauer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlauer?.play()
        }catch{
            print("Could not find and play the sound file")
        }
    }
}

func stopSound(){
    audioPlauer?.stop()
}
