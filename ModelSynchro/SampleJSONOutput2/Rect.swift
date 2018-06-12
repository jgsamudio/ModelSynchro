//
//  Rect.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 06/12/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

struct Rect: Codable {
	let height: String
	let key: String
	let width: String
	let x: String
	let y: String

	enum CodingKeys: String, CodingKey {
		case height = "height"
		case key = "key"
		case width = "width"
		case x = "x"
		case y = "y"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Rect.CodingKeys.self)

        do {
            height = try container.decode(String.self, forKey: .height)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: height key is not found!")
        }

        do {
            key = try container.decode(String.self, forKey: .key)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: key key is not found!")
        }

        do {
            width = try container.decode(String.self, forKey: .width)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: width key is not found!")
        }

        do {
            x = try container.decode(String.self, forKey: .x)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: x key is not found!")
        }

        do {
            y = try container.decode(String.self, forKey: .y)
        } catch {
            throw ModelSynchroDecoderError.keyNotFound("error: y key is not found!")
        }
	}
}
