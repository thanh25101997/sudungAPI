//
//  ViewController.swift
//  SuDungAPI
//
//  Created by Van Thanh on 9/1/20.
//  Copyright © 2020 Van Thanh. All rights reserved.
//

import UIKit

struct Result: Codable {
    var data : [Persion] = []
    
}
class ViewController: UIViewController {
    var data = [Persion]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        print(data)
//        loadJson()
//        guard let url = URL(string : "http://demo0737597.mockable.io/master_data") else {return}
//        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
//
//
//
//                do {
//                    var userData : [Persion]
//                    let result = try JSONDecoder().decode(Result.self, from: data!)
//                    userData = result.data
//                    print(userData)
//                } catch  {
//                        print("error")
//                }
//
//        }.resume()
//        let jsonUrl = "http://demo0737597.mockable.io/master_data"
//        guard let url = URL(string: jsonUrl) else { return }
//        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
//            guard let data = data else { return }
//            do {
//                var userData: [Persion]
//                let result = try JSONDecoder().decode(Result.self, from: data)
//                userData = result.data
//                DispatchQueue.main.sync {
//                    self.tableView.reloadData()
//                }
//            }
//            catch {
//                print("error")
//                return }
//        }.resume()
           
        
    }
    
//    func loadJson() {
//        guard let url = URL(string : "http://demo0737597.mockable.io/master_data") else {return}
//        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
//            if error == nil{
//                let json = JSONDecoder()
//
//                do {
//                    var userData = [Persion]()
//                    let result = try json.decode(Result.self, from: data!)
//                    userData = result.data
//                    print(userData)
//                } catch  {
//                        print("error")
//                }
//            }
//        }.resume()
//
//    }

    func fetchData() {
        if let url = URL(string: "http://demo0737597.mockable.io/master_data") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let parsedJSON = try decoder.decode(Result.self, from: data)
                        self.data = parsedJSON.data
                        print(data)
                        DispatchQueue.main.sync {
                            self.tableView.reloadData()
                        }
                    } catch {
                      print("error")
                      
                    }
                }
            }.resume()
        }
    }

}
