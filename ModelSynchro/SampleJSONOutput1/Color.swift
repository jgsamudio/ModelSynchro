//
//  Color.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Color: Codable {
	let alpha: String
	let blue: String
	let colorSpace: String
	let customColorSpace: String
	let green: String
	let key: String
	let red: String

	enum CodingKeys: String, CodingKey {
		case alpha = "alpha"
		case blue = "blue"
		case colorSpace = "colorSpace"
		case customColorSpace = "customColorSpace"
		case green = "green"
		case key = "key"
		case red = "red"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Color.CodingKeys.self)

        do {
            alpha = try container.decode(String.self, forKey: .alpha)
        } catch {
            print("warning: alpha key is not found")
            throw APIError.noDataRetreived
        }

        do {
            blue = try container.decode(String.self, forKey: .blue)
        } catch {
            print("warning: blue key is not found")
            throw APIError.noDataRetreived
        }

        do {
            colorSpace = try container.decode(String.self, forKey: .colorSpace)
        } catch {
            print("warning: colorSpace key is not found")
            throw APIError.noDataRetreived
        }

        do {
            customColorSpace = try container.decode(String.self, forKey: .customColorSpace)
        } catch {
            print("warning: customColorSpace key is not found")
            throw APIError.noDataRetreived
        }

        do {
            green = try container.decode(String.self, forKey: .green)
        } catch {
            print("warning: green key is not found")
            throw APIError.noDataRetreived
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            print("warning: key key is not found")
            throw APIError.noDataRetreived
        }

        do {
            red = try container.decode(String.self, forKey: .red)
        } catch {
            print("warning: red key is not found")
            throw APIError.noDataRetreived
        }
	}
}
