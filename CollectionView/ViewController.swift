//
//  ViewController.swift
//  CollectionView
//
//  Created by Evita Sihombing on 12/04/24.
//

import UIKit

var data = [MovieData(sectionType: "Telugu Movies", movies: ["Acharya","Aranya","Bangarraju", "LoveStory", "Pushpa", "Srikaram", "VaruduKavalenu", ""]), MovieData(sectionType: "Web Series", movies: ["11Hour","Godse","Loser", "Mail", "Sin", "11Hour", "Godse", "Loser", "Mail", "Sin"]), MovieData(sectionType: "HollyWood Movies", movies: ["BloodShoot","HellBoy","JungleBook", "SpiderMan", "BloodShoot", "HellBoy", "JungleBook", "SpiderMan"]),MovieData(sectionType: "Telugu Movies", movies: ["Acharya","Aranya","Bangarraju", "LoveStory", "Pushpa", "Srikaram", "VaruduKavalenu", ""]), MovieData(sectionType: "Web Series", movies: ["11Hour","Godse","Loser", "Mail", "Sin", "11Hour", "Godse", "Loser", "Mail", "Sin"]), MovieData(sectionType: "HollyWood Movies", movies: ["BloodShoot","HellBoy","JungleBook", "SpiderMan", "BloodShoot", "HellBoy", "JungleBook", "SpiderMan"])
]

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderTopPadding = 0
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .green
    }
    
}
