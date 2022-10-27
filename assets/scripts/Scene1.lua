
Scene1 = {
    ----------------------------------------------------
    -- Table to define the list of assets
    ----------------------------------------------------
    assets = {
        [0] = { type="texture", id = "landscape-texture", file = "../../assets/test-landscape.png" },
        [1] = { type="texture", id = "player-texture", file = "../../assets/monsterspritesheet.png" },
        [2] = { type="texture", id = "spotty-dog", file = "../../assets/spottydog.png" },
        [3] = { type="texture", id = "bw-landscape", file = "../../assets/blackandwhitelandscape.png" }

    },
    ----------------------------------------------------
    -- table to define the map config variables
    ----------------------------------------------------
--     map = {
--         textureAssetId = "landscape-texture",
--         file = "../../assets/landscape.map",
--         scale = 4,
--         tileSize = 32,
--         mapSizeX = 40,
--         mapSizeY = 30
--     },
    map = {
        textureAssetId = "bw-landscape",
        file = "../../assets/landscape.map",
        scale = 4,
        tileSize = 32,
        mapSizeX = 20,
        mapSizeY = 10
    },
    ----------------------------------------------------
    -- table to define entities and their components
    ----------------------------------------------------
    entities = {
        [0] = {
            name = "player",
            layer = 2,
            components = {
                transform = {
                    position = {
                        x = 100,
                        y = 100
                    },
                    velocity = {
                        x = 0,
                        y = 0
                    },
                    width = 96,
                    height = 64,
                    scale = 2,
                    rotation = 0
                },
                sprite = {
                    textureAssetId = "player-texture",
                    animated = true,
                    frameCount = 2,
                    animationSpeed = 90,
                    hasDirections = true,
                    fixed = false
                },
                input = {
                    keyboard = {
                        up = "w",
                        left = "a",
                        down = "s",
                        right = "d",
                        shoot = "space"
                    }
                },
                collider = { tag = "PLAYER" }
            }
            --end of components
        },
        -- end of this particular entity
        [1] = {
            name = "dog",
            layer = 3,
            components = {
                transform = {
                    position = {
                        x = 500,
                        y = 500
                    },
                    velocity = {
                        x = 0,
                        y = 0
                    },
                    width = 48,
                    height = 32,
                    scale = 4,
                    rotation = 0
                },
                sprite = {
                    textureAssetId = "spotty-dog",
                    animated = false,
                    frameCount = 1,
                    animationSpeed = 90,
                    hasDirections = false,
                    fixed = true
                },
                collider = { tag = "NPC" }
            }
            --end of components
        }
        -- end of this particular entity
    }
    --end of entities
}