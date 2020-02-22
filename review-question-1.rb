## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

def getBulbasaurAbilityUrl(pokemon)
    # pokemon[0][:abilities][0][:ability][:url]
    pokemon[0][:abilities][0][:ability][:url]
end

def getFirstPokemon(pokemons)
    # pokemons.find { | pokemon | pokemon[:base_experience] > 40 }

    pokemons.find do | pokemon |
        pokemon[:base_experience] > 40   
    end  
    
    # pokemons.find do | pokemon |

    #     if pokemon[:base_experience] > 40 &&  pokemon[:base_experience]
        
    #     end
    # end
end

def getAllPokemon(pokemons)
    # pokemons.find { | pokemon | pokemon[:base_experience] > 40 }

    # pokemons.find do | pokemon |
    #     pokemon[:base_experience] > 40   
    # end  
    
    retPokemon = []
    pokemons.each do | pokemon |

        if pokemon[:base_experience] > 40
            retPokemon << pokemon
        end
    end
    retPokemon
end

def getAllPokemonNames(pokemons)
    # pokemons.find { | pokemon | pokemon[:base_experience] > 40 }

    # pokemons.find do | pokemon |
    #     pokemon[:base_experience] > 40   
    # end  
    
    retPokemon = []
    pokemons.each do | pokemon |

        # if pokemon[:base_experience] > 40
            retPokemon << pokemon[:name]
        # end
    end
    retPokemon
end


def getPokemonOerWeight(pokemons)
    
    retVal = false
    pokemons.each do | pokemon |

        if pokemon[:weight] > 60
            retVal = true
            break
        end
    end
    retVal
end

# pokemon = [
#   {
#     "id": 1,
#     "name": "bulbasaur",
#     "base_experience": 64,
#     "height": 7,
#     "is_default": true,
#     "order": 1,
#     "weight": 69,
#     "abilities": [
#         {
#             "is_hidden": true,
#             "slot": 3,
#             "ability": {
#                 "name": "chlorophyll",
#                 "url": "http://pokeapi.co/api/v2/ability/34/"
#             }
#         }
#     ]
# },


# puts getBulbasaurAbilityUrl(pokemon)
# puts getFirstPokemon(pokemon)
# puts getAllPokemon(pokemon)
# puts getAllPokemonNames(pokemon)
puts getPokemonOerWeight(pokemon) 

# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
