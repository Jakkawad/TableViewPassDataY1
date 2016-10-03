//
//  Movies.swift
//  TableViewPassDataY1
//
//  Created by Jakkawad Chaiplee on 10/3/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import Foundation

class Movie {
    var _name:String!
    
    var name:String {
        return _name
    }
    
    init(name: String) {
        self._name = name
    }
}

class Category {
    static let sharedInstance = Category()
    let genres:[Genre]
    
    init() {
        let movie1 = Movie(name: "Rambo")
        let category1 = Genre(name: "Category1", movies: [movie1])
        
        let movie2 = Movie(name: "The Flash")
        let category2 = Genre(name: "Category2", movies: [movie2])
        genres = [category1, category2]
    }
}

class Genre {
    let name:String
    let movies:[Movie]
    
    init(name: String, movies: [Movie]) {
        self.name = name
        self.movies = movies
    }
}
