//
//  Villa.swift
//  ElogationPreview
//
//  Created by Caelan Dailey on 7/2/17.
//  Copyright © 2017 Caelan Dailey. All rights reserved.
//

import Foundation


struct Villa {
    
    let country: String
    let locality: String
    let description: String
    let title: String
    let imageName: String
    
    init(country: String, locality: String, description: String, title: String, imageName: String) {
        self.country = country
        self.locality = locality
        self.description = description
        self.title = title
        self.imageName = imageName
    }
    
}

extension Villa {
    static var testData: [Villa] {
        return [
            Villa(country: "Ultra Miami", locality: "Ultra Miami", description: "This is a test", title: "\(Lorem.name)'s Villa", imageName: "Ultra Miami.jpg"),
            Villa(country: "Electric Zoo", locality: "Electric Zoo", description: "A special charm is given by the dark rectangular box above the main entrance.", title: "\(Lorem.name)'s Villa", imageName: "Electric Zoo.jpg"),
            Villa(country: "Coachella", locality: "Coachella", description: "A wooden table and a beige stuffed couch in front of plasma, this is definitely a good place to spend your afternoons watching movies with your family.", title: "\(Lorem.name)'s Villa", imageName: "Coachella.jpg"),
            Villa(country: "Electric Forest", locality: "Electric Forest", description: "The team working on this project then became larger, also including collaborators Rios Clementi Hale Studios and designers Lorraine Letendre and Lynda Murray.", title: "\(Lorem.name)'s Villa", imageName: "Electric Forest.jpg"),
            Villa(country: "EDC", locality: "EDC", description: "You can admire the beautiful landscape through large windows. This  area of the house stands out through the warmth color of the furniture.", title: "\(Lorem.name)'s Villa", imageName: "EDC.jpg"),
            Villa(country: "Bonnaroo", locality: "Bonnaroo", description: "The process of designing and then building a house usually start with a series of requests, a list of requirements coming from the client.", title: "Michael Bay's LA Villa", imageName: "Bonnaroo.jpg"),
           
        ]
    }
}
