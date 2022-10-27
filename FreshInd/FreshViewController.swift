//
//  FreshViewController.swift
//  FreshInd
//
//  Created by gih96984 on 2022/9/27.
//

import UIKit
//import WebKit

//記得尊從
class FreshViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var freshTableView: UITableView!
    
    
    //設定section數量
    func numberOfSections(in tableView: UITableView) -> Int {
        return freshs.freshType.count
    }
    //設定row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let type = freshs.freshType[section]
        let fodder = type.freshInfo
        return fodder.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "freshCell", for: indexPath) as? FreshTableViewCell else{return UITableViewCell()}
        
        cell.update(data: freshs, section: indexPath.section, row: indexPath.row)

        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //設定section header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section{
        case 0:
            return "蔬菜"
        case 1:
            return "水果"
//        case 2:
//            return "海鮮"
//        case 3:
//            return ""
        default:
            return ""
        }
    }
    //section header 尺寸調整
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    //傳資料給下一頁
    @IBSegueAction func showDetail(_ coder: NSCoder) -> detailViewController? {
        
        if let section = freshTableView.indexPathForSelectedRow?.section,let row = freshTableView.indexPathForSelectedRow?.row {
            
            let fresh = freshs.freshType[section].freshInfo[row]
            
            let controller = detailViewController(coder: coder)
            controller?.fresh = fresh
            return controller
        }else {
            return nil
        }
    }
    
    //取消選取狀態
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
        

    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let url = URL(string: allData.MovieType[indexPath.section].movieInfo[indexPath.row].movieInfoAddress){
//            let controller = SFSafariViewController(url: url)
//            present(controller, animated: true, completion: nil)
//        }
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //多條線
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
