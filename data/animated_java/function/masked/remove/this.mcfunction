# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.masked.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'masked', 'function_path': 'animated_java:masked/remove/this'}
function #animated_java:masked/as_root/on_remove
execute on passengers run kill @s
kill @s