extends Control

#@onready var CoinLabel: Label = $CoinLabel
#var PassiveStrength: int
#signal CoinGenerator(int)
#@onready var UpgradeCostLabel: Label = $UpgradeCostLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#func _on_upgrade_button_pressed() -> void:
	#print("Passive Upgrade Pressed")
	## Check Cost
	#if Coin >= UpgradeCostLabel:
		#PassiveStrength = PassiveStrength * 2
	## If have money: Double strength, Raise price	
#
#
#func _on_timer_timeout() -> void:
	#print("Passive Generation")
	 ##Emit Signal
	 ##Effects (Coin, Sound)
