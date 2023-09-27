//
//  movies.swift
//  MoviesHW
//
//  Created by Alua Nurakhanova on 16.09.2023.
//

import Foundation
import SwiftyJSON

struct Movies{
    var name = ""
    var yearOfRelease = ""
    var director = ""
    var poster = ""
    var directorImage = ""



    init (json : JSON){
        if let item = json["name"].string{
        name = item
        }
        if let item = json["yearOfRelease"].string{
            yearOfRelease = item
        }
        if let item = json["director"].string{
            director = item
        }
        if let item = json["poster"].string{
            poster = item
        }
        if let item = json["directorImage"].string{
            directorImage = item
        }
    }
}
