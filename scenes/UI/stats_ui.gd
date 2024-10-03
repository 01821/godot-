extends HBoxContainer
class_name StatsUI

@onready var block:HBoxContainer = $Block
@onready var health:HBoxContainer = $Health
@onready var block_label:Label = %BlockLabel
@onready var health_label:Label = %HealthLabel

func update_stats(stats:Stats):
	block_label.text = str(stats.block)
	health_label.text = str(stats.health)
	
	block.visible = stats.block > 0
	health.visible = stats.health > 0
	