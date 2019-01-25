# ModelSynchro | [![Build Status](https://travis-ci.org/jgsamudio/ModelSynchro.svg?branch=master)](https://travis-ci.org/jgsamudio/ModelSynchro)

## Description

An automated way to generate network models from JSON and keep them up to date.

[Logic Diagram](https://www.lucidchart.com/invitations/accept/d9a748ce-7ffd-463a-abcd-716f6914a8d5).

## Installation

### CocoaPods

ModelSynchro is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'ModelSynchro'
```

After adding the ModelSynchro to your Podfile, add the following script as a run script in your Build Phases.

```
"${PODS_ROOT}/ModelSynchro/ModelSynchro/Source/ModelSynchro" -projectDirectory ${SRCROOT}/
```

Next, you will need to configure a custom configuration.json file and add it to the root of your project.

```
{
  "authorName" : "Jonathan Samudio",
  "companyName" : "Prolific Interactive",
  "projectName" : "MyProject",
  "language" : "swift",
  "outputDirectory" : "MyProject/Models/",
  "localJSONDirectory" : [
    {
        "inputDirectory" : "SampleJSON1/",
        "outputDirectory" : "SampleJSONOutput1/"
    },
    {
        "inputDirectory" : "SampleJSON2/",
        "outputDirectory" : "SampleJSONOutput2/"
    }
  ],
  "endpoints" : [
    {
      "url" : "https://facebook.github.io/react-native/movies.json",
      "name" : "Movies"
    },
    {
      "url" : "https://facebook.github.io/react-native/movies.json",
      "name" : "Movies"
    }
  ],
  "mappedModelNames" : [
    {
        "jsonKey" : "filters",
        "mappedName" : "Filter"
    },
    {
        "jsonKey" : "event_guests",
        "mappedName" : "EventGuest"
    },
    {
        "jsonKey" : "event",
        "mappedName" : "RegistrationEvent"
    },
    {
        "fileName": "Event",
        "mappedName": "MappedEvent"
    }
  ]
}
```

### Manual Installation

To run the application manually, run the following command.

```
[Directory to ModelSynchro source]/ModelSynchro -projectDirectory [Root Project Directory]
```

## Custom Keys

If the variable names from the api are not what you wish to use as variable names for your models, then ModelSynchro allows you to mark and make updates to your model variable names. Take the `swift` model below as an example.

```
struct Book: Codable {
	let author: String
	let id: Int

	enum CodingKeys: String, CodingKey {
		case author = "author"
		case id = "id"
	}
}
```

If you would like to change `id` to `bookId` then all we need to do is change the variable name from `id` to `bookId` and mark the line with a `//` after the variable declaration. In addition, the `id` case in the `CodingKeys` will need to be changed to `bookId`.   

```
struct Book: Codable {
	let author: String
	let bookId: Int //

	enum CodingKeys: String, CodingKey {
		case author = "author"
		case bookId = "id"
	}
}
```

## Custom Model Names

By default, the name of the swift network model will be set to the name of the local JSON file or the keys of the JSON object for sub-models. If you would like to change the name of the model to something else add the `mappedModelNames` object to the configuration file. Here you can add the JSON key or filename along with the mapped name.

```
"mappedModelNames" : [
    {
        "jsonKey" : "filters",
        "mappedName" : "Filter"
    },
    {
        "jsonKey" : "event_guests",
        "mappedName" : "EventGuest"
    },
    {
        "jsonKey" : "event",
        "mappedName" : "RegistrationEvent"
    },
    {
        "fileName": "Event",
        "mappedName": "MappedEvent"
    }
]
```

## Languages

As of now `swift` is supported as the primary language to generate models. `objective-c` is also available, however is currently in beta. To add a custom language please refer to the LanguageFormatter protocol to create a new language formatter.
