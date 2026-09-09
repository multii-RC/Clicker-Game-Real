extends Control

var PassiveCost: int

# Move this to main script
@onready var CoinScene: PackedScene = load("res://Scenes/coin.tscn")

#@onready var CoinLabel: Label = $CoinLabel
var PassiveStrength: int
signal CoinGenerator(int)
@onready var UpgradeCostLabel: Label = $UpgradeCostLabel

@export var Game: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	PassiveCost = 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_upgrade_button_pressed() -> void:
	print("Passive Upgrade Pressed")
	# Check Cost
	if Game.coin >= UpgradeCostLabel:
		PassiveStrength = PassiveStrength * 2
	# If have money: Double strength, Raise price	
	UpgradeCostLabel.text = "Upgrade: " + str(PassiveCost)

func _on_timer_timeout() -> void:
	print("Passive Generation")
	 #Emit Signal
	 #Effects (Coin, Sound)
	var c = CoinScene.instantiate()
	add_child(c)
	c.global_position = get_global_mouse_position()
	CoinGenerator.emit(PassiveStrength)
