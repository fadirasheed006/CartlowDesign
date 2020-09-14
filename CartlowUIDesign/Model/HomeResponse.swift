/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct HomeResponse : Codable {
	let status : String?
	let banner : [Banner]?
	let category : [Category]?
	let daily_deals : Daily_deals?
	let sections : [Sections]?
	let home_message : String?
	let home_message_color : String?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case banner = "banner"
		case category = "category"
		case daily_deals = "daily_deals"
		case sections = "sections"
		case home_message = "home_message"
		case home_message_color = "home_message_color"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		banner = try values.decodeIfPresent([Banner].self, forKey: .banner)
		category = try values.decodeIfPresent([Category].self, forKey: .category)
		daily_deals = try values.decodeIfPresent(Daily_deals.self, forKey: .daily_deals)
		sections = try values.decodeIfPresent([Sections].self, forKey: .sections)
		home_message = try values.decodeIfPresent(String.self, forKey: .home_message)
		home_message_color = try values.decodeIfPresent(String.self, forKey: .home_message_color)
	}

}
