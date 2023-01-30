//
//  Textbook.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import Foundation

public struct Textbook{
    var title: String?
    var textbookImage: String?
    var level: String?
    var description: String
    var subcat: [Subcategory] = []
}

public struct Subcategory{
    var title : String?
    var chapters: [Chapter] = []
}

public struct Chapter{
    var chapTitle: String
    var isFavorite : Bool
}
