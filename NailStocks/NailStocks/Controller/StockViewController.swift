//
//  StockViewController.swift
//  NailStocks
//
//  Created by 张一鸣 on 2022/2/20.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire


class StockViewController: UIViewController {
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStockPrice(_ sender: Any) {
        
        guard let symbol =   txtStockSymbol.text else {return}
        //let symbol = txtStockSymbol.text!.uppercased()
        
        let url = "\(shortQuoteURL)\(symbol.uppercased())?apikey=\(apiKey)"
        //https://financialmodelingprep.com/api/v3/financial-statement-symbol-lists?apikey="
        
        print (url)
        
        SwiftSpinner.show("Getting Stock Value for \(symbol)")
        
        AF.request(url).responseJSON {  response in
            
            SwiftSpinner.hide(nil)
            
            if response.error != nil{
                print(response.error!)
                return
            }
            
            let stocks  = JSON(response.data!).array
            
            guard  let stock = stocks!.first  else {return}
            
            print(stock)
            
            
            let quote = QuoteShort()
            quote.symbol = stock["symbol"].stringValue
            quote.price = stock["price"].floatValue
            quote.volume = stock["volume"].intValue
            
            self.lblStockPrice.text = "\(quote.symbol): \(quote.price) $"
             
            
        }
        
    }
    
}
