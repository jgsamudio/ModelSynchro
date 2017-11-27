struct Features: Codable {
	let hotspots: [Hotspots]
	let navigation: String
	let images: [Images]
	let audiences: [Audiences]
	let text: String
}