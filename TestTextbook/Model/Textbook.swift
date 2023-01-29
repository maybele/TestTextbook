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
    var description: String?
    var chapter: [Chapter] = []
}

public struct Chapter{
    var chapTitle: String
}

public var datasource : [Textbook] = [
     Textbook(title: "GGGg Textbook", level: nil, description: "Description GGGGG1", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter G1"),
                         Chapter(chapTitle: "Chapter G2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter G1"),
                         Chapter(chapTitle: "Chapter G2")
                         ])]),
     Textbook(title: "初心者コース", level: nil, description: "英会話を初めて学習する方、英語であいさつ・自己紹介ができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "ビジネスコース", level: nil, description: "ビジネスで登場するトピックについて意見交換できるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A1"),
                         Chapter(chapTitle: "Chapter A2")
                         ]),
         Subcategory(chapter: [
                         Chapter(chapTitle: "Chapter A3"),
                         Chapter(chapTitle: "Chapter A4")
                         ])]),
     ]
