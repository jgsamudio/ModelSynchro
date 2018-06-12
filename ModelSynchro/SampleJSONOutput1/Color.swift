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
            throw ModelSynchroDecoderError.keyNotFound("error: alpha key is not found!")
        }

        do {
            blue = try container.decode(String.self, forKey: .blue)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: blue key is not found!")
        }

        do {
            colorSpace = try container.decode(String.self, forKey: .colorSpace)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: colorSpace key is not found!")
        }

        do {
            customColorSpace = try container.decode(String.self, forKey: .customColorSpace)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: customColorSpace key is not found!")
        }

        do {
            green = try container.decode(String.self, forKey: .green)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: green key is not found!")
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: key key is not found!")
        }

        do {
            red = try container.decode(String.self, forKey: .red)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: red key is not found!")
        }
	}
}
