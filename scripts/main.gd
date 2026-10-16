extends Node2D

func _ready() -> void:
	make_arena_bounds()
	make_labels()

func make_arena_bounds() -> void:
	var bounds := StaticBody2D.new()
	bounds.name = "ArenaBounds"
	add_child(bounds)
	for item in [[Vector2(18, 350), Vector2(36, 700)], [Vector2(1134, 350), Vector2(36, 700)], [Vector2(576, 636), Vector2(1152, 24)]]:
		var collision := CollisionShape2D.new()
		var shape := RectangleShape2D.new()
		shape.size = item[1]
		collision.shape = shape
		collision.position = item[0]
		bounds.add_child(collision)

func make_labels() -> void:
	var layer := CanvasLayer.new()
	add_child(layer)
	var title := make_label(layer, "CREATING INSTANCES  ·  GAME 21", Vector2(34, 24), 25, Color("ffe8a3"))
	var lesson := make_label(layer, "SCENE → NODE → INSTANCE     |     BALL.TSCN     WALL.TSCN × 8", Vector2(35, 63), 16, Color("b9fff0"))
	var student := make_label(layer, "673380076-1  นายณภัทร โสดาดง", Vector2(35, 94), 15, Color("dce7f8"))
	var hint := make_label(layer, "Observe the bouncing balls and reusable platforms   ·   SPACE: add a Ball instance", Vector2(35, 595), 15, Color("c1cde0"))

func make_label(parent: Node, text: String, at: Vector2, size: int, color: Color) -> Label:
	var label := Label.new()
	label.text = text
	label.position = at
	label.add_theme_font_size_override("font_size", size)
	label.add_theme_color_override("font_color", color)
	parent.add_child(label)
	return label

func _unhandled_key_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_SPACE:
		var ball := preload("res://Ball.tscn").instantiate()
		ball.position = Vector2(randf_range(280.0, 870.0), 126.0)
		add_child(ball)
