//
//  ViewController.swift
//  UISlider
//
//  Created by D7703_30 on 2018. 5. 15..
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = String(Int(mySlider.value)+indexPath.row)
        return  cell
    }
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.dataSource = self
        myTableView.delegate = self
    }

    @IBAction func SliderMoved(_ sender: Any) {
        myTableView.reloadData()
        let val = Int(mySlider.value)
        print(val)
        print("슬라이드 움직임")
        myLabel.text = String(val)
    }


}

