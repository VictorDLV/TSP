//: Playground - noun: a place where people can play

import UIKit

class Button {
    var delegate : ButtonDelegate?
    let title : String
    init(title : String) {
        self.title = title
    }
    func tapped(){
        self.delegate?.userTapButton(self)
        //cuando esto pase
    }
}

class Song {
    let title : String
    init(title : String) {
        self.title = title
    }
}

//Protocolo ****************************
protocol ButtonDelegate {
    func userTapButton(_ button : Button)
}

class MusicController : ButtonDelegate {
    
    func userTapButton(_ button: Button) {
        if button.title == "Play"{
            playSong(playList.first!)
        }else if button.title == "Pause"{
            pausedSong()
        }
    }
    
    func playSong(_ song : Song){
        print("Now Song : \(song.title)")
    }
    func pausedSong(){
        print("Paused current song")
    }
}
var playList: [Song] = [Song(title: "image"),Song(title: "yesterday"),Song(title: "Mexico")]
print(playList[0].title)
let musicController = MusicController()
let startMusicButton = Button(title: "Play")
let pauseMusicButton = Button(title: "Pause")

startMusicButton.delegate = musicController
pauseMusicButton.delegate = musicController
startMusicButton.tapped()
pauseMusicButton.tapped()

