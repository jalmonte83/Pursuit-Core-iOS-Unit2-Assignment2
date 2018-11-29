//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

private var episodeSections = [[GOTEpisode]]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        episodeSections = Array(repeating: [GOTEpisode](), count: GOTEpisode.allEpisodes.last!.season)
        GOTEpisode.allEpisodes.forEach { episodeSections[$0.season - 1].append($0)}
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let destination = segue.destination as? DetailViewController,
//            let cellSelected = tableView.indexPathForSelectedRow else {return}
//        let episodeSelected = episodes
//        destination.episodes = episodeSelected
//    }
    

}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return episodeSections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodeSections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section % 2 == 0 {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "leadingShowCell", for: indexPath) as? EpisodeCell else { fatalError("fatal error") }
        let episode = episodeSections[indexPath.section][indexPath.row]
        cell.leadingEpisodeName.text = String(episode.name)
        cell.leadingEpisodeNumber.text = "S:\(episode.season)  E:\(episode.number)"
        cell.leadingImage.image = UIImage(named: episode.mediumImageID)
        return cell
    } else {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "trailingShowCell", for: indexPath) as? EpisodeCell else { fatalError("fatal error") }
        let episode = episodeSections[indexPath.section][indexPath.row]
        cell.trailingEpisodeName.text = String(episode.name)
        cell.trailingEpisodeNumber.text = "S:\(episode.season)  E:\(episode.number)"
        cell.trailingImage.image = UIImage(named: episode.mediumImageID)
        return cell
        }
    
    
    }
}
