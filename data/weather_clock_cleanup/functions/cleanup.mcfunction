tag @a remove weather_clock_shown
execute as @e[type=#weather_clock:item_frames,nbt={Item: {id: "minecraft:clock", Count: 1b, tag: {display: {Lore: ['{"text":"weather_clock_active"}']}}}}] run data remove entity @s Item.tag
execute as @e[type=minecraft:item,nbt={Item: {id: "minecraft:clock", Count: 1b, tag: {display: {Lore: ['{"text":"weather_clock_active"}']}}}}] run data remove entity @s Item.tag
schedule function weather_clock_cleanup:cleanup 5s