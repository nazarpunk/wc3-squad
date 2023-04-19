function InitAllSprites takes nothing returns nothing
    call CreateSprite("kenosbynpesta", 0.3, 0.0, 0.5)
    call CreateSprite("anime", 1, 0.2, 0.5)
    call CreateSprite("anime-nigarundayo", 0.8, 0.5, 0.5)
    call CreateSprite("cat-walking", 0.5, 0, 0.3)
    call CreateSprite("excalibur-soul-eater", 0.5, 0.2, 0.3)
    call CreateSprite("futurama-fry", 0.7, 0.5, 0.3)
    call CreateSprite("hp-baxxter", 1, 0.8, 0.3)
    call CreateSprite("cat-love", 0.3, 0.0, 0.15)
    call CreateSprite("paimon", 0.4, 0.2, 0.15)
    call CreateSprite("pico-boku-no-pico", 0.45, 0.45, 0.12)
endfunction

function CreateSprite takes string path, real scale, real x, real y returns nothing
    local framehandle sprite = BlzCreateFrameByType("SPRITE", "SpriteName", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
    call BlzFrameSetAbsPoint(sprite, FRAMEPOINT_CENTER, x, y)
    call BlzFrameSetSize(sprite, 0.0001, 0.0001)
    call BlzFrameSetModel(sprite, path, 0)
    call BlzFrameSetScale(sprite, scale)
    set sprite = null
endfunction