//
//  superchargerTableViewController.swift
//  TeslaSuperchargerStation
//
//  Created by water on 2021/8/21.
//

import UIKit

class superchargerTableViewController: UITableViewController {
    
    struct Properkey {
        static let superchargercell = "superchargercell"
    }
    
    let superchargerStations = [
        [
        Supercharger(name: "內湖服務體驗中心", address: "台北市內湖區舊宗路二段1號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "北投雅樂軒", address: "台北市北投區大業路300巷1號 B2", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "南港展覽館 2 館", address: "台北市南港區經貿二路2號 B1F 165-170車位", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "臺灣大學", address: "台北市南港區經貿二路2號 B1F 165-170車位", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "花博公園", address: "台北市南港區經貿二路2號 B1F 165-170車位", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "中和環球購物中心", address: "台北市南港區經貿二路2號 B1F 165-170車位", intro: "服務中心營業時間 週一至週六 9:00 - 18:00")
        ],
        [
        Supercharger(name: "JMall", address: "台灣大道四段1060巷", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "水湳愛買超級充電站", address: "台中市西屯區中清路二段1199號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "草屯", address: "南投縣草屯鎮草溪路", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "太保", address: "嘉義縣太保市中山路一段", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "水湳愛買超級充電站", address: "台中市西屯區中清路二段1199號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "勤美誠品綠園道", address: "西區公益路68號 B3", intro: "服務中心營業時間 週一至週六 9:00 - 18:00")
        ],
        [
        Supercharger(name: "奇美博物館", address: "仁德區文華路二段66號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "美術館 2 館", address: "台南市中西區忠義路二段1號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "亞洲新灣區", address: "前鎮區成功二路88號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00")
        ],
        [
        Supercharger(name: "台泥DAKA超級充電站", address: "花蓮秀林鄉和平236號", intro: "服務中心營業時間 週一至週六 9:00 - 18:00"),
        Supercharger(name: "翰品酒店", address: "順興路及中美二街交叉口", intro: "服務中心營業時間 週一至週六 9:00 - 18:00")
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBSegueAction func showDetail(_ coder: NSCoder) -> superchargdetailViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else { return nil }
        guard let row = tableView.indexPathForSelectedRow?.row else { return nil }
        return superchargdetailViewController(coder: coder, supercharge: superchargerStations[section][row])
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        superchargerStations.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        superchargerStations[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Properkey.superchargercell, for: indexPath) as! superchargerTableViewCell

        let superchar = superchargerStations[indexPath.section][indexPath.row]
        cell.nameLabel.text = superchar.name
        cell.addressLabel.text = superchar.address
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header: String
        switch section {
        case 0:
            header = sections.north.rawValue 
        case 1:
            header = sections.center.rawValue
        case 2:
            header = sections.south.rawValue
        case 3:
            header = sections.east.rawValue
        default:
            header = ""
        }
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }

}
