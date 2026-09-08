extends Button

@export var ClickerStrength: int
signal ClickerSignal(int)

@onready var CoinScene: PackedScene = load("res://Scenes/coin.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ClickerStrength = 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_upgrade_button_pressed() -> void:
	print("Upgrade Pressed")

	ClickerStrength = ClickerStrength * 2
	

func on_pressed() -> void:
	ClickerSignal.emit(ClickerStrength)
	var c = CoinScene.instantiate()
	c.global_position = get_global_mouse_position()
