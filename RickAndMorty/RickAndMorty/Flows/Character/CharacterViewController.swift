//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Aleksandr Fetisov on 13.07.2024.
//

import UIKit

class CharacterViewController: UIViewController {
    
    var model: CharacterModel!
    
    private lazy var characterView = CharacterView()
    
    override func loadView() {
        view = characterView
    }
    
    override func viewDidLoad() {
        navigationController?.navigationBar.tintColor = .rm_green
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.titleTextAttributes = [.font: UIFont(name: Fonts.bold, size: UIConstants.headerFontSize) ?? .systemFont(ofSize: UIConstants.headerFontSize, weight: .bold),
                                                                   .foregroundColor: UIColor.rm_white]
        title = model.name
        characterView.configureWith(model)
    }
    
}
