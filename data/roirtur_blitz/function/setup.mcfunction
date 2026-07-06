function roirtur_blitz:reset
function roirtur_blitz:games/objective_race/setup/internal
tellraw @s [{"text":"Roirtur Blitz setup complete.","color":"gold"}]
tellraw @s [{"text":"1. Build every current lobby with ","color":"yellow"},{"text":"/function roirtur_blitz:lobby/build","color":"aqua"}]
tellraw @s [{"text":"2. Return to the main lobby with ","color":"yellow"},{"text":"/function roirtur_blitz:lobby/tp","color":"aqua"}]
tellraw @s [{"text":"3. Open Objective Race directly with ","color":"yellow"},{"text":"/function roirtur_blitz:games/objective_race/lobby/tp","color":"aqua"}]

