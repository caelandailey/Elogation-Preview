//
//  ViewController.swift
//  ElogationPreview
//
//  Created by Caelan Dailey on 7/2/17.
//  Copyright © 2017 Caelan Dailey. All rights reserved.
//


import UIKit
import ElongationPreview


class ViewController: ElongationViewController {
    
    var datasource: [Villa] = Villa.testData
    
    // MARK: Lifecycle 🌎
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func openDetailView(for indexPath: IndexPath) {
        let id = String(describing: DetailViewController.self)
        guard let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: id) as? DetailViewController else { return }
        let villa = datasource[indexPath.row]
        detailViewController.title = villa.title
        expand(viewController: detailViewController)
    }
    
}

// MARK: - Setup ⛏
private extension ViewController {
    
    func setup() {
        tableView.backgroundColor = UIColor.black
        //tableView.registerNib(DemoElongationCell.self)
        tableView.register(UINib(nibName: "DemoElongationCell", bundle: nil), forCellReuseIdentifier: "ElongationCell")
        
    }
    
}

// MARK: - TableView 📚
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ElongationCell")!
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        super.tableView(tableView, willDisplay: cell, forRowAt: indexPath)
        guard let cell = cell as? DemoElongationCell else { return }
        
        let villa = datasource[indexPath.row]
        
        let attributedLocality = NSMutableAttributedString(string: villa.locality.uppercased(), attributes: [
            //NSFontAttributeName: UIFont.arial(ofSize: 22, weight: .medium),
            NSKernAttributeName: 8.2,
            NSForegroundColorAttributeName: UIColor.white
            ])
        
        cell.topImageView?.image = UIImage(named: villa.imageName)
        cell.localityLabel?.attributedText = attributedLocality
        cell.countryLabel?.text = villa.country
        cell.aboutTitleLabel?.text = villa.title
        cell.aboutDescriptionLabel?.text = villa.description
    }
    
}
