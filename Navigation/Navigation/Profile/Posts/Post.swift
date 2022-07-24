//
//  Post.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 25.04.2022.
//

import Foundation

struct PostTemplate {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    
    static func makeNewPost() -> [[PostTemplate]] {
        var posts = [[PostTemplate]]()
        var section = [PostTemplate]()
        section.append(PostTemplate(author: "Claude Monet", description: "Impression, soleil levant", image: "monet", likes: 85, views: 120))
        section.append(PostTemplate(author: "Paul Cèzanne", description: "Le panier de pommes", image: "cezanne", likes: 70, views: 108))
        section.append(PostTemplate(author: "Edgar Degas", description: """
        La Classe de danse.
        The Ballet Class is a painting by Edgar Degas, which was painted between 1871 and 1874. It is in the collection of the Musée d'Orsay, Paris, France. It was commissioned by Jean-Baptiste Faure
        """, image: "degas", likes: 150, views: 230))
        section.append(PostTemplate(author: "Camille Pissarro", description: "Boulevard Montmartre", image: "pissarro", likes: 3001, views: 4809))
        
        for _ in 0...4 {
            posts.append(section)
        }
        
        return posts
    }
}

