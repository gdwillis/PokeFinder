//
//  PokeAnnotation.swift
//  PokeFinder
//
//  Created by admin on 10/15/16.
//  Copyright © 2016 gdw. All rights reserved.
//

import Foundation
import MapKit
//names currently do not match with id
let pokemon = [ "Alakazam", "Haunger", "Blastois", "Charazard", "Mewtwo"]

class PokeAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D ()
    var pokemonName: String
    var pokemonNumber: Int
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, pokemonNumber: Int) {
        self.coordinate = coordinate
        self.pokemonNumber = pokemonNumber
        self.pokemonName = pokemon [pokemonNumber - 1].capitalized
        self.title = self.pokemonName
    }
}
