//
//  MarketCapViewController.swift
//  Assignment_5
//
//  Created by 张一鸣 on 2022/2/26.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire


class MarketCapViewController: UIViewController {

    @IBOutlet weak var txtTicker: UITextField!
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblCap: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func searchMarketCap(_ sender: Any) {
        guard let symbol =   txtTicker.text else {return}
        
        let url = "\(marketCapURL)\(symbol)?apikey=\(apiKey)"
        print (url)
        
        SwiftSpinner.show("Getting Market Cap Value for \(symbol)")
        
        AF.request(url).responseJSON {  response in
            
            SwiftSpinner.hide(nil)
            
            if response.error != nil{
                print(response.error!)
                return
            }
            
            let data  = JSON(response.data!).array
            
            guard  let data = data!.first  else {return}
            
            print(data)
             
            let quote = MarketCap()
            quote.symbol = data["symbol"].stringValue
            quote.date = data["date"].stringValue
            quote.volume = data["marketCap"].intValue
            
            self.lblDate.text = "\(quote.date)"
            self.lblCap.text = "$ \(quote.volume)"

        }
    }
}
