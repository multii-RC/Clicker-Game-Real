extends Control

#sets the coin variable outside the scope
var coin: int

#Turns the label into a variable
@onready var CoinLabel: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
# Setting intial coin to 0
	coin = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	CoinLabel.text = "リス肉: " + str(coin)

	#Reciever function for clicker button
func _on_clicker_signal(ClickerStrength) -> void:
	print("Clicker Signal Received")
	# Whenever clicker is clicked, add squirrel meat(Not changing the variable from coin)
	coin += ClickerStrength

	#Adds the passively generated coins
func _on_coin_generated(PassiveStrength) -> void:
	coin = coin + PassiveStrength
	print("Main: Passive Generation Signal Received")
