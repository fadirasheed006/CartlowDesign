/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Items : Codable {
	let id : Int?
	let item_title : String?
	let currency : String?
	let mainprice : Int?
	let price : Int?
	let deal_enabled : String?
	let market_price : Int?
	let discount_percentage : Int?
	let valid_till : String?
	let quantity : Int?
	let cod : String?
	let liked : String?
	let grade : String?
	let grade_color : String?
	let report : String?
	let shipping_time : String?
	let image : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case item_title = "item_title"
		case currency = "currency"
		case mainprice = "mainprice"
		case price = "price"
		case deal_enabled = "deal_enabled"
		case market_price = "market_price"
		case discount_percentage = "discount_percentage"
		case valid_till = "valid_till"
		case quantity = "quantity"
		case cod = "cod"
		case liked = "liked"
		case grade = "grade"
		case grade_color = "grade_color"
		case report = "report"
		case shipping_time = "shipping_time"
		case image = "image"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		item_title = try values.decodeIfPresent(String.self, forKey: .item_title)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		mainprice = try values.decodeIfPresent(Int.self, forKey: .mainprice)
		price = try values.decodeIfPresent(Int.self, forKey: .price)
		deal_enabled = try values.decodeIfPresent(String.self, forKey: .deal_enabled)
		market_price = try values.decodeIfPresent(Int.self, forKey: .market_price)
		discount_percentage = try values.decodeIfPresent(Int.self, forKey: .discount_percentage)
		valid_till = try values.decodeIfPresent(String.self, forKey: .valid_till)
		quantity = try values.decodeIfPresent(Int.self, forKey: .quantity)
		cod = try values.decodeIfPresent(String.self, forKey: .cod)
		liked = try values.decodeIfPresent(String.self, forKey: .liked)
		grade = try values.decodeIfPresent(String.self, forKey: .grade)
		grade_color = try values.decodeIfPresent(String.self, forKey: .grade_color)
		report = try values.decodeIfPresent(String.self, forKey: .report)
		shipping_time = try values.decodeIfPresent(String.self, forKey: .shipping_time)
		image = try values.decodeIfPresent(String.self, forKey: .image)
	}

}