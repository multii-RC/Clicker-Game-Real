extends Control

var PassiveCost: int

# Move this to main script
@onready var CoinScene: PackedScene = load("res://Scenes/coin.tscn")

#@onready var CoinLabel: Label = $CoinLabel
var PassiveStrength: int
signal CoinGenerated(int)
@onready var UpgradeCostLabel: Label = $UpgradeCostLabel

@export var Game: Node

@export var timeInterval: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	PassiveCost = 10
	PassiveStrength = 0
	$Timer.wait_time = timeInterval


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		UpgradeCostLabel.text = "Upgrade: " + str(PassiveCost)



func _on_upgrade_button_pressed() -> void:
	print("Passive Upgrade Pressed")
	# Check Cost
	if Game.coin >= PassiveCost:
		Game.coin = Game.coin - PassiveCost
		PassiveStrength = (PassiveStrength + 1) * 2
		PassiveCost = PassiveCost * 10
	# If have money: Double strength, Raise price	
	
func _on_timer_timeout() -> void:
	print("Passive Generation")
	 #Emit Signal
	CoinGenerated.emit(PassiveStrength)
	 #Effects (Coin, Sound)
	if PassiveStrength > 0:
		var c = CoinScene.instantiate()
		add_child(c)
		c.global_position = $TextureRect.global_position
	
	
