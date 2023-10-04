//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdatePrice(_ coinManager: CoinManager, price: CoinModel)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "F9DAD865-4B85-4362-8034-94939CF33C8B"
    
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getURL(currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        getCoinPrice(for: urlString)
    }
    
    func getCoinPrice(for urlString: String) {
        // 1. Create a URL
        if let url = URL(string: urlString) {
            
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let price = self.parseJSON(safeData) {
                        delegate?.didUpdatePrice(self, price: price)
                    }
                }
            }
            
            // 4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(_ coinData: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do{
            let decodedPrice = try decoder.decode(CoinData.self, from: coinData)
            let time = decodedPrice.time
            let btc = decodedPrice.asset_id_base
            let currency = decodedPrice.asset_id_quote
            let lastPrice = decodedPrice.rate
            
            let coin = CoinModel(time: time, from: btc, to: currency, price: lastPrice)
            return coin
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }
}
