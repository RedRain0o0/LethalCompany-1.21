# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.masked.root] run return 0
execute on passengers if entity @s[tag=aj.masked.data] unless data entity @s {data:{rigHash: '82ae39399b0e998049c32089840d612361df7a5a2b1a769ac13b118b5c61f7c3'}} on vehicle run function animated_java:masked/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1