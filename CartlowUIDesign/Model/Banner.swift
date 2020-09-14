/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Banner : Codable {
	let image : String?
	let slider_link : String?
	let product_id : String?
	let section_type : String?
	let section_label : String?
	let section_category : String?
	let section_id : String?

	enum CodingKeys: String, CodingKey {

		case image = "image"
		case slider_link = "slider_link"
		case product_id = "product_id"
		case section_type = "section_type"
		case section_label = "section_label"
		case section_category = "section_category"
		case section_id = "section_id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		slider_link = try values.decodeIfPresent(String.self, forKey: .slider_link)
		product_id = try values.decodeIfPresent(String.self, forKey: .product_id)
		section_type = try values.decodeIfPresent(String.self, forKey: .section_type)
		section_label = try values.decodeIfPresent(String.self, forKey: .section_label)
		section_category = try values.decodeIfPresent(String.self, forKey: .section_category)
		section_id = try values.decodeIfPresent(String.self, forKey: .section_id)
	}

}