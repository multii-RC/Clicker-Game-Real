extends Control

var coin: int
@export var ClickerStrength: int
@onready var CoinLabel: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
# Setting intial coin to 0
	coin = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	#Reciever function for clicker button
func _on_button_down() -> void:
	
	# Whenever clicker is clicked, add 10 coins
	coin += ClickerStrength
	
	CoinLabel.text = "Coin: " + str(coin)
	print(coin)


func _on_upgrade_button_pressed() -> void:
	print("Upgrade Pressed")

	ClickerStrength = ClickerStrength * 2
