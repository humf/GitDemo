//
//  Player.swift
//  MFStoryboard
//
//  Created by 胡淼枫 on 16/7/29.
//  Copyright © 2016年 胡淼枫. All rights reserved.
//
import UIKit
struct Player {
    
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
    
}