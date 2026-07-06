function objective_race:game/reset
function objective_race:setup/internal
tellraw @s [{"text":"Objective Race setup complete.","color":"gold"}]
tellraw @s [{"text":"1. Stand in your lobby and run ","color":"yellow"},{"text":"/function objective_race:lobby/set","color":"aqua"}]
tellraw @s [{"text":"2. Review settings with ","color":"yellow"},{"text":"/function objective_race:settings/show","color":"aqua"}]
tellraw @s [{"text":"3. Start a round with ","color":"yellow"},{"text":"/function objective_race:game/start","color":"aqua"}]
