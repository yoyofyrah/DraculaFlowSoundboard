extends Node2D

@onready var audio_stream = $Sampler
@onready var lyrics = $Lyrics

var midi_event
var input_event

#func _print_midi_info(midi_event: InputEventMIDI):
	#print(midi_event)
	#print("Channel " + str(midi_event.channel))
	#print("Message " + str(midi_event.message))
	#print("Pitch " + str(midi_event.pitch))
	#print("Velocity " + str(midi_event.velocity))
	#print("Instrument " + str(midi_event.instrument))
	#print("Pressure " + str(midi_event.pressure))
	#print("Controller number: " + str(midi_event.controller_number))
	#print("Controller value: " + str(midi_event.controller_value))

func _ready():
	OS.open_midi_inputs()
	print(OS.get_connected_midi_inputs())
	
func _on_music_switch_pressed() -> void:
	if $Beat.playing == true:
		$Beat.stop()
	else:
		$Beat.play()

func player(key, file_path, text):
	if Input.is_action_just_pressed(key):
		audio_stream.stream = load(file_path)
		audio_stream.play()
		lyrics.text = text

func _input(input_event):
	if input_event is InputEventMIDI:
		if	input_event.velocity >= 15:
		#_print_midi_info(input_event)
			play_sample(input_event)
	elif input_event is InputEvent:
		play_sample_keyboard()

func play_sample_keyboard():

	player("a1","res://samples/A01.ogg", "[center]we str8 gassin cuttin str8 to da brix[/center]")

	player("a2","res://samples/A02.ogg", "[center]dis shit aint nothin 2 me man[/center]")

	player("a3","res://samples/A03.ogg", "[center]we smokin runtz[/center]")

	player("a4","res://samples/A04.ogg", "[center]shordee gotta bbl took dat shit out bcuz she culdnt run[/center]")

	player("a5","res://samples/A05.ogg", "[center]i had 2 do it to dem snipe[/center]")

	player("a6","res://samples/A06.ogg", "[center]i went Judge Judy on dat pussy snipe[/center]")

	player("a7","res://samples/A07.ogg", "[center]im not loyal 2 anybody ima demon[/center]")

	player("a8","res://samples/A08.ogg", "[center]i have no loyalty 4 any1[/center]")

	player("a9","res://samples/A09.ogg", "[center]never did never will[/center]")

	player("a10","res://samples/A10.ogg", "[center]ha ha[/center]")

	player("a11","res://samples/A11.ogg", "[center]*vamp laugh*[/center]")

	player("a12","res://samples/A12.ogg", "[center]dis shit aint NOTHIN 2 me man[/center]")

	player("a13","res://samples/A13.ogg","[center]movin lyke draxula we gettit bak in bluud[/center]")

	player("a14","res://samples/A14.ogg", "[center]i rly did dis[/center]")

	player("a15","res://samples/A15.ogg", "[center]im rly him[/center]")

	player("a16","res://samples/A16.ogg", "[center]i have no sympathy[/center]")

func play_sample(midi_event: InputEventMIDI):
	if midi_event.pitch == 48 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A01.ogg")
		audio_stream.play()
		lyrics.text = "[center]we str8 gassin cuttin str8 to da brix[/center]"
		
	if midi_event.pitch == 49 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A02.ogg")
		audio_stream.play()
		lyrics.text = "[center]dis shit aint nothin 2 me man[/center]"
		

	if midi_event.pitch == 50 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A03.ogg")
		audio_stream.play()
		lyrics.text = "[center]we smokin runtz[/center]"
		
	if midi_event.pitch == 51 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A04.ogg")
		audio_stream.play()
		lyrics.text = "[center]shordee gotta bbl took dat shit out bcuz she culdnt run[/center]"
		
	if midi_event.pitch == 52 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A05.ogg")
		audio_stream.play()
		lyrics.text = "[center]i had 2 do it to dem snipe[/center]"
		
	if midi_event.pitch == 53 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A06.ogg")
		audio_stream.play()
		lyrics.text = "[center]i went Judge Judy on dat pussy snipe[/center]"
		
	if midi_event.pitch == 54 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A07.ogg")
		audio_stream.play()
		lyrics.text = "[center]im not loyal 2 anybody ima demon[/center]"
		
	if midi_event.pitch == 55 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A08.ogg")
		audio_stream.play()
		lyrics.text = "[center]i have no loyalty 4 any1[/center]"
		
	if midi_event.pitch == 56 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A09.ogg")
		audio_stream.play()
		lyrics.text = "[center]never did never will[/center]"
		
	if midi_event.pitch == 57 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A10.ogg")
		audio_stream.play()
		lyrics.text = "[center]ha ha[/center]"
		
	if midi_event.pitch == 58 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A11.ogg")
		audio_stream.play()
		lyrics.text = "[center]*vamp laugh*[/center]"
		
	if midi_event.pitch == 59 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A12.ogg")
		audio_stream.play()
		lyrics.text = "[center]dis shit aint NOTHIN 2 me man[/center]"
		
	if midi_event.pitch == 60 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A13.ogg")
		audio_stream.play()
		lyrics.text = "[center]movin lyke draxula we gettit bak in bluud[/center]"
		
	if midi_event.pitch == 61 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A14.ogg")
		audio_stream.play()
		lyrics.text = "[center]i rly did dis[/center]"
		
	if midi_event.pitch == 62 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A15.ogg")
		audio_stream.play()
		lyrics.text = "[center]im rly him[/center]"
		
	if midi_event.pitch == 63 and midi_event.velocity >= 15:
		audio_stream.stream = preload("res://samples/A16.ogg")
		audio_stream.play()
		lyrics.text = "[center]i have no sympathy[/center]"
