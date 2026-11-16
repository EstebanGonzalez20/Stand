class_name Guard extends Resource

## Valor máximo de guardia del personaje.
@export var max_value : int

## Valor actual de guardia del personaje.
var current_value : int :
	set(new_value):
		current_value = clamp(new_value, 0, max_value)
		if current_value == 0:
			broken = true
		
		elif current_value > 0:
			broken = false

## Flag que audita si la guardia del personaje esta rota o no.
var broken : bool = false

## Flag que audita si la guardia del personaje puede recuperarse o no.
var recovery_availible : bool = true

func initialize() -> void:
	current_value = max_value

func reset() -> void:
	current_value = max_value

func recover(amount : int) -> void:
	current_value += amount
	recovery_availible = true

func take_damage(amount : int) -> void:
	current_value -= amount
	recovery_availible  = false
