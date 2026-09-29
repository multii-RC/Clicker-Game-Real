extends Button

@export var ClickerStrength: int
signal ClickerSignal(int)

@onready var CoinScene: PackedScene = load("res://Scenes/risu.tscn")

@export var Game: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ClickerStrength = 10
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$UpgradeButton.text = "Upgrade: " + str(ClickerStrength * 5)

	#Checks if you have enough to upgrade, updates coins and the strength
func _on_upgrade_button_pressed() -> void:
	print("Upgrade Pressed")
	if Game.coin >= ClickerStrength * 5:
		Game.coin = Game.coin - ClickerStrength * 5
		ClickerStrength = ClickerStrength * 2
		
	#When clicker is pressed it sends signal and spawns sprite.
func on_pressed() -> void:
	ClickerSignal.emit(ClickerStrength)
	var c = CoinScene.instantiate()
	add_child(c)
	c.global_position = get_global_mouse_position()
