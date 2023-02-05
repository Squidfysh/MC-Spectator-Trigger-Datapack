scoreboard players enable @a s

execute as @a[scores={s=1..}, scores={ST_waiting=0}] run function spectator_trigger:mark

scoreboard players reset @a[scores={s=1..}] s
