extends Node

var score = 0

@onready var score_label: Label = $ScoreLabel
@onready var coin_sfx: AudioStreamPlayer2D = $CoinSFX # transform is fixed, would ideally put it where the player is

func add_point():
	score += 1
	coin_sfx.playing = true
	score_label.text = "You collected " + str(score) + " coins!"
