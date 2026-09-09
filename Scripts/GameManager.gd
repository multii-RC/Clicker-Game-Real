extends Control

var coin: int
#@export var ClickerStrength: int
@onready var CoinLabel: Label = $CoinLabel

#var PassiveStrength: int
#@onready var UpgradeCostLabel: Label = $"Passive Generator/UpgradeCostLabel"
#var PassiveCost: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
# Setting intial coin to 0
	coin = 0
	#PassiveCost = 10
	#PassiveStrength = 0
	#UpgradeCostLabel.text = "Upgrade: " + str(PassiveCost)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	CoinLabel.text = "Coin: " + str(coin)

	#Reciever function for clicker button
func _on_clicker_signal(ClickerStrength) -> void:
	print("Clicker Signal Received")
	# Whenever clicker is clicked, add 10 coins
	coin += ClickerStrength
	
	#CoinLabel.text = "Coin: " + str(coin)
	## Moved to Process Function
	print(coin)


#func _on_upgrade_button_pressed() -> void:
	#print("Upgrade Pressed")
#
	#ClickerStrength = ClickerStrength * 2
## Moved to Clicker

#func _on_passive_upgrade_button_pressed() -> void:
	#print("Passive Upgrade Pressed")
	# Check Cost
	#if coin >= PassiveCost:
		#PassiveStrength = (PassiveStrength + 1) * 2
		#coin = coin - PassiveCost
		#PassiveCost = PassiveCost * 10
	# If have money: Double strength, Raise price	
	

	
#func _on_timer_timeout() -> void:
	#print("Passive Generation")
	# Emit Signal
	#coin += PassiveStrength
	# Effects (Coin, Sound)
	

func _on_coin_generated(PassiveStrength) -> void:
	coin = coin + PassiveStrength
	print("Main: Passive Generation")
