schedule function spectator_trigger:loop_5t 5t

scoreboard players enable @a s
execute as @a unless entity @s[scores={st_counter=0..}] run scoreboard players set @s st_counter 0

scoreboard players set @a[scores={s=1.., st_counter=0}] st_counter 1

scoreboard players reset @a[scores={s=1..}] s

# first loop after triggering
scoreboard players set @a[scores={st_counter=1}, gamemode=!spectator] st_toSpectator 1
scoreboard players set @a[scores={st_counter=1}, gamemode=spectator] st_toSurvival 1

tellraw @a[scores={st_counter=1, st_toSpectator=1..}] ["","You will enter ",{"text":"spectator mode","bold":true,"color":"gold"}," in 5 seconds."]
tellraw @a[scores={st_counter=1, st_toSurvival=1..}] ["","You will enter ",{"text":"survival mode","bold":true,"color":"green"}," in 5 seconds."]

# next loops
scoreboard players add @a[scores={st_counter=1..}] st_counter 5

execute as @a[scores={st_counter=100..}] run function spectator_trigger:change_mode
