//
//  MusicControl.swift
//  labTunesExample
//
//  Created by Usuario invitado on 11/21/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
class MusicController {
    static var urlSession = URLSession(configuration: .default)
    static func fetchMusic(search: String, completion: @escaping ([Song]?) -> Void){
        guard let url = URL(string: "https://itunes.apple.com/search/media=music&identity=song&term=" + search)
            else {return}
        let dataTask = urlSession.dataTask(with: url){
            (data, response, error) in
            if let error = error {
                debugPrint("Error in dataTask; \(error.localizedDescription)")
            }
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                debugPrint("Error in httpResponse, code out range between 200 and 299")
                completion(nil)
                return
            }
            guard let data = data else{
                debugPrint("there's not data")
                completion(nil)
                return
            }
            guard let songList = try? JSONDecoder().decode(Songs.self, from: data)
                else {
                    debugPrint("Can't decode the data")
                    completion(nil)
                    return
                    }
            //debugPrint(songList)
            completion(songList.results)
    
            }
            dataTask.resume()
        
        }
}

