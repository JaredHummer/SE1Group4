const config = require("./config")
pool = config.pool

const bookOptions = (request, response) => {
    
    pool.query("select distinct genre from book", (error, results) => {
        const result = results.rows
        var genres = []
        for (i in result) {
            genres.push(result[i]['genre'])
        }
     
        response.setHeader('Allow', 'GET, OPTIONS')
        const discoveryDocumentation = {
            'methods': ['GET', 'OPTIONS'],
            'GET': {
                'parameters': {
                    'genre': {
                        'type': 'string',
                        'description': 'Narrow the results to a certain genre of book.',
                        'required': 'false',
                        'options': genres
                    },
                    'rating': {
                        'type': 'float',
                        'description': 'Narrow results to a certain rating or higher.',
                        'required': 'false'
                    },
                    'limit': {
                        'type': 'integer',
                        'description': 'Limit to <x> amount of returned objects.',
                        'required': 'false',
                        'default': 10
                    },
                    'topSold': {
                        'type': 'boolean',
                        'description': 'Sort books by number of copies sold, highest first.',
                        'required': 'false',
                        'default': 'false,'
                    }
                },
                'example': {
                    'genre': 'Thriller',
                    'rating': 4.5,
                    'limit': 25,
                    'topSold': 'true'
                }
            },
            'OPTIONS':{
                'parameters': {}
            }
        }
        response.status(200).json(discoveryDocumentation)
    })
}

const PMOptions = (request, response) => {
    response.setHeader('Allow', 'GET, PUT, PATCH, OPTIONS')
    const discoveryDocumentation = {
        'methods': ['GET', 'PUT', 'PATCH', 'OPTIONS'],
        'GET': {
            'parameters': {
                'username': {
                    'type': 'string',
                    'description': 'The username (email) of the user.',
                    'required': 'true'
                }
            },
            'example': {
                'username': 'someEmail@domain.com',
            }
        },
        'PUT': {
            'parameters': {
                'username': {
                    'type': 'string',
                    'description': 'The username (email) of the user.',
                    'required': 'true'
                },
                'password': {
                    'type': 'string',
                    'description': 'The password of the user.',
                    'required': 'true'
                },
                'name': {
                    'type': 'string',
                    'description': 'The user\'s full name.',
                    'required': 'false'
                },
                'email': {
                    'type': 'string',
                    'description': 'The backup email for the user.',
                    'required': 'false'
                },
                'address': {
                    'type': 'string',
                    'description': 'The user\'s physical address.',
                    'required': 'false'
                }
            },
            'example': {
                'username': 'someEmail@domain.com',
                'password': 'sdkjf876$%^%&ddsa',
                'name': 'John Smith',
                'email': 'otherEmail@domain.com',
                'address': '123 Main St, SomeTown, State 11010'
            }
        },
        'PATCH': {
            'parameters': {
                'username': {
                    'type': 'string',
                    'description': 'The username (email) of the user.',
                    'required': 'true'
                },
                'password': {
                    'type': 'string',
                    'description': 'The password of the user.',
                    'required': 'false'
                },
                'name': {
                    'type': 'string',
                    'description': 'The user\'s full name.',
                    'required': 'false'
                },
                'email': {
                    'type': 'string',
                    'description': 'The backup email for the user.',
                    'required': 'false'
                },
                'address': {
                    'type': 'string',
                    'description': 'The user\'s physical address.',
                    'required': 'false'
                }
            },
            'example': {
                'username': 'someEmail@domain.com',
                'password': 'sdkjf876$%^%&ddsa',
                'name': 'John Smith',
                'email': 'otherEmail@domain.com',
                'address': '123 Main St, SomeTown, State 11010'
            }
        },
        'OPTIONS':{
            'parameters': {}
        }
    }
    response.status(200).json(discoveryDocumentation)
}

const CCOptions = (request, response) => {
    response.setHeader('Allow', 'PUT, OPTIONS')
    const discoveryDocumentation = {
        'methods': ['PUT','OPTIONS'],
        'PUT': {
            'parameters': {
                'username': {
                    'type': 'string',
                    'description': 'The username of the user who hold the credit card.',
                    'required': 'true'
                },
                'card_number': {
                    'type': 'string',
                    'description': 'The 16-digit credit card number.',
                    'required': 'true'
                },
                'exp_date': {
                    'type': 'string',
                    'description': 'The expiration date of the credit card.',
                    'format': 'MM/00/YYYY',
                    'required': 'true'
                },
                'cvv': {
                    'type': 'integer',
                    'description': 'The 3 digit cvv code on the back of the credit card',
                    'required': 'true'
                }
            },
            'example': {
                'username': 'someEmail@domain.com',
                'card_number': "1846382984738165",
                'exp_date': '04/00/2025',
                'cvv': 450
            }
        },
        'OPTIONS': {
            'parameters': {}
        }
    }
    response.status(200).json(discoveryDocumentation)
}




module.exports = {
    bookOptions,
    PMOptions,
    CCOptions
}