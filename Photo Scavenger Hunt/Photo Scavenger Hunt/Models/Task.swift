//
//  Task.swift
//  Photo Scavenger Hunt
//
//  Created by Manasa Pooni on 3/20/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite local restuarant",
                 description: "Where do you go to eat good food?"),
            Task(title: "Favorite local cafe",
                 description: "Where do you go to relax and grab a coffee?"),
            Task(title: "Favorite brunch place",
                 description: "Where do you go to have a meal between breakfast and lunch?"),
            Task(title: "Favorite hiking spot",
                 description: "Where do you like to hike in nature?")
        ]
    }
}

