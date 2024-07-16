//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Aleksandr Fetisov on 12.07.2024.
//

import Foundation

struct CharacterModel {
    let name: String
    let status: Status
    let species: Species
    let lastLocation: String
    var firstEpisode: String
    let info: String
    var imageData: Data?
}
