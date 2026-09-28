class_name Health extends Resource

## Vida máxima del personaje.
@export var max_health : int
## Vida actual del personaje.
var current_health : int = max_health :
	set(new_value):
		current_health = clamp(new_value, 0, max_health)

func heal(amount : int) -> void:
	current_health += amount

func take_damage(amount : int) -> void:
	current_health -= amount
