//
//  Datasource.swift
//  TestTextbook
//
//  Created by FDCBele on 1/29/23.
//

import Foundation

class MainDataSource {
    
    public static var seriesDataSource: [Textbook] = [
        Textbook(title: "Series 1", level: nil, description: "Series 1", subcat: [
            Subcategory(title: "Part 1",chapters: [
                            Chapter(chapTitle: "Chapter G1",isFavorite: true),
                            Chapter(chapTitle: "Chapter G2",isFavorite: true)
                            ]),
            Subcategory(title: "Part 2",chapters: [
                            Chapter(chapTitle: "Chapter G1",isFavorite: true),
                            Chapter(chapTitle: "Chapter G2",isFavorite: true)
                            ])]),
        Textbook(title: "Series 2 コース", level: nil, description: "英会話を初めて学習する方、英語であいさつ・自己紹介ができるようになりたい方を対象としたコースです。基礎から英語を学びたい方のための教材をご用意しています。", subcat: [
            Subcategory(title: "Favorite 1",chapters: [
                            Chapter(chapTitle: "Fav A1",isFavorite: true),
                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
                            ]),
            Subcategory(title: "Part 2",chapters: [
                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
                            ])]),
        Textbook(title: "Series 3", level: nil, description: "ビジネスで登場するトピックについて意見交換できるようになりたい方を対象としたコースです。", subcat: [
            Subcategory(title: "Favorite 2",chapters: [
                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
                            Chapter(chapTitle: "Fav A2",isFavorite: false)
                            ]),
            Subcategory(title: "Part 2",chapters: [
                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
                            ])]),
//        Textbook(title: "Series 4", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
//        Textbook(title: "Series 5", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
//        Textbook(title: "日常英 Series 10", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapter: [
//                            Chapter(chapTitle: "Chapter A1"),
//                            Chapter(chapTitle: "Chapter A2")
//                            ]),
//            Subcategory(title: "Part 2", chapter: [
//                            Chapter(chapTitle: "Chapter A3"),
//                            Chapter(chapTitle: "Chapter A4")
//                            ])]),
        ]
    
    public static var courseDataSource: [Textbook] = [
        Textbook(title: "Course 1", level: nil, description: "Description GGGGG1", subcat: [
            Subcategory(title: "Part 1", chapters: [
                            Chapter(chapTitle: "Chapter G1",isFavorite: true),
                            Chapter(chapTitle: "Chapter G2",isFavorite: true)
                            ]),
            Subcategory(title: "Part 2", chapters: [
                            Chapter(chapTitle: "Chapter G1",isFavorite: true),
                            Chapter(chapTitle: "Chapter G2",isFavorite: true)
                            ])])
//        Textbook(title: "Course 2 コース", level: nil, description: "英会話を初めて学習する方、英語であいさつ・自己紹介ができるようになりたい方を対象としたコースです。基礎から英語を学びたい方のための教材をご用意しています。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "Course 3", level: nil, description: "ビジネスで登場するトピックについて意見交換できるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Favorite 3", chapters: [
//                            Chapter(chapTitle: "Fav 3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "Course 4", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "Course 5", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "日常英会話中級コース", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Fav 4", chapters: [
//                            Chapter(chapTitle: "Fav 4",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
//        Textbook(title: "日常英 Course 10", level: nil, description: "興味のあることについて自分の意見を言ったり、詳細な状況を説明したりすることができるようになりたい方を対象としたコースです。", subcat: [
//            Subcategory(title: "Part 1", chapters: [
//                            Chapter(chapTitle: "Chapter A1",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A2",isFavorite: false)
//                            ]),
//            Subcategory(title: "Part 2", chapters: [
//                            Chapter(chapTitle: "Chapter A3",isFavorite: false),
//                            Chapter(chapTitle: "Chapter A4",isFavorite: false)
//                            ])]),
        ]
     
    public static func getFavorites() -> [Textbook] {
        var favoriteTextbooks : [Textbook] = []
        // get all favorites in course textbooks -> labeled break
        for textbook in courseDataSource {
            categoryLoop : for category in textbook.subcat {
                for chapter in category.chapters {
                    if(chapter.isFavorite) {
                        favoriteTextbooks.append(textbook)
                        break categoryLoop
                    }
                }
            }
        }
        
        // get all favorites in series textbooks -> labeled break
        for textbook in seriesDataSource {
            categoryLoop : for category in textbook.subcat {
                for chapter in category.chapters {
                    if(chapter.isFavorite) {
                        favoriteTextbooks.append(textbook)
                        break categoryLoop
                    }
                }
            }
        }
        return favoriteTextbooks
    }
}
