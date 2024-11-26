tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n------------------------------\n"},{"text":"[1]","clickEvent":{"action":"run_command","value":"/trigger 1"}},{"text":" "},{"text":"[2]","clickEvent":{"action":"run_command","value":"/trigger 2"}},{"text":" "},{"text":"[3]","clickEvent":{"action":"run_command","value":"/trigger 3"}},{"text":" "},{"text":"[4]","clickEvent":{"action":"run_command","value":"/trigger 4"}},{"text":" "},{"text":"[5]","clickEvent":{"action":"run_command","value":"/trigger 5"}},{"text":" "},{"text":"[6]","clickEvent":{"action":"run_command","value":"/trigger 6"}},{"text":" "},{"text":"[7]","clickEvent":{"action":"run_command","value":"/trigger 7"}},{"text":" "},{"text":"[8]","clickEvent":{"action":"run_command","value":"/trigger 8"}},{"text":" "},{"text":"[9]","clickEvent":{"action":"run_command","value":"/trigger 9"}},{"text":" "},{"text":"[0]","clickEvent":{"action":"run_command","value":"/trigger 0"}},{"text":"\n"},{"text":"[Q]","clickEvent":{"action":"run_command","value":"/trigger q"}},{"text":" "},{"text":"[W]","clickEvent":{"action":"run_command","value":"/trigger w"}},{"text":" "},{"text":"[E]","clickEvent":{"action":"run_command","value":"/trigger e"}},{"text":" "},{"text":"[R]","clickEvent":{"action":"run_command","value":"/trigger r"}},{"text":" "},{"text":"[T]","clickEvent":{"action":"run_command","value":"/trigger t"}},{"text":" "},{"text":"[Y]","clickEvent":{"action":"run_command","value":"/trigger y"}},{"text":" "},{"text":"[U]","clickEvent":{"action":"run_command","value":"/trigger u"}},{"text":" "},{"text":"[I]","clickEvent":{"action":"run_command","value":"/trigger i"}},{"text":" "},{"text":"[O]","clickEvent":{"action":"run_command","value":"/trigger o"}},{"text":" "},{"text":"[P]","clickEvent":{"action":"run_command","value":"/trigger p"}},{"text":"\n  "},{"text":"[A]","clickEvent":{"action":"run_command","value":"/trigger a"}},{"text":" "},{"text":"[S]","clickEvent":{"action":"run_command","value":"/trigger s"}},{"text":" "},{"text":"[D]","clickEvent":{"action":"run_command","value":"/trigger d"}},{"text":" "},{"text":"[F]","clickEvent":{"action":"run_command","value":"/trigger f"}},{"text":" "},{"text":"[G]","clickEvent":{"action":"run_command","value":"/trigger g"}},{"text":" "},{"text":"[H]","clickEvent":{"action":"run_command","value":"/trigger h"}},{"text":" "},{"text":"[J]","clickEvent":{"action":"run_command","value":"/trigger j"}},{"text":" "},{"text":"[K]","clickEvent":{"action":"run_command","value":"/trigger k"}},{"text":" "},{"text":"[L]","clickEvent":{"action":"run_command","value":"/trigger l"}},{"text":"\n      "},{"text":"[Z]","clickEvent":{"action":"run_command","value":"/trigger z"}},{"text":" "},{"text":"[X]","clickEvent":{"action":"run_command","value":"/trigger x"}},{"text":" "},{"text":"[C]","clickEvent":{"action":"run_command","value":"/trigger c"}},{"text":" "},{"text":"[V]","clickEvent":{"action":"run_command","value":"/trigger v"}},{"text":" "},{"text":"[B]","clickEvent":{"action":"run_command","value":"/trigger b"}},{"text":" "},{"text":"[N]","clickEvent":{"action":"run_command","value":"/trigger n"}},{"text":" "},{"text":"[M]","clickEvent":{"action":"run_command","value":"/trigger m"}},{"text":"\n      "},{"text":"[V]","clickEvent":{"action":"run_command","value":"/trigger scroll_down"}},{"text":" "},{"text":"[^]","clickEvent":{"action":"run_command","value":"/trigger scroll_up"}},{"text":" "},{"text":"[-]","clickEvent":{"action":"run_command","value":"/trigger -"}},{"text":" "},{"text":"[ENTER]","clickEvent":{"action":"run_command","value":"/trigger enter"}},{"text":" "},{"text":"[EXIT]","clickEvent":{"action":"run_command","value":"/trigger exit"},"hoverEvent":{"action":"show_text","contents":{"translate":"terminal.lc.exit_warn"}}},{"text":"\n------------------------------"}]
data remove entity @e[tag=TerminalInteract,limit=1] interaction
# [^] [V] [-]
# [SPACE]

scoreboard players enable * 1
scoreboard players enable * 2
scoreboard players enable * 3
scoreboard players enable * 4
scoreboard players enable * 5
scoreboard players enable * 6
scoreboard players enable * 7
scoreboard players enable * 8
scoreboard players enable * 9
scoreboard players enable * 0
scoreboard players enable * q
scoreboard players enable * w
scoreboard players enable * e
scoreboard players enable * r
scoreboard players enable * t
scoreboard players enable * y
scoreboard players enable * u
scoreboard players enable * i
scoreboard players enable * o
scoreboard players enable * p
scoreboard players enable * a
scoreboard players enable * s
scoreboard players enable * d
scoreboard players enable * f
scoreboard players enable * g
scoreboard players enable * h
scoreboard players enable * j
scoreboard players enable * k
scoreboard players enable * l
scoreboard players enable * z
scoreboard players enable * x
scoreboard players enable * c
scoreboard players enable * v
scoreboard players enable * b
scoreboard players enable * n
scoreboard players enable * m
scoreboard players enable * -
scoreboard players enable * scroll_down
scoreboard players enable * scroll_up
scoreboard players enable * enter
scoreboard players enable * exit