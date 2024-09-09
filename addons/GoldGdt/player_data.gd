extends Node

var health:int = 100
var armor:int = 0


func Death():
	pass

func takeDamage(damage:int):
	var calculatedDamage = calculateDamageValues(damage)
	health = health - calculatedDamage[0]
	armor = armor - calculatedDamage[1]
	if armor < 0:
		armor = 0
	if health <= 0:
		Death()
		

func calculateDamageValues(damage:int):
	var healthdamage:int
	var armordamage:int
	if armor > 0:
		healthdamage = (damage * 0.2)
		armordamage = (damage * 0.4)
	else:
		healthdamage = damage
		armordamage = 0
	return [healthdamage,armordamage]
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
