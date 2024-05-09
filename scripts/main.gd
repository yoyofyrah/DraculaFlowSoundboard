extends Node2D

@onready var audio_stream = $Sampler

var midi_event

@onready var lyrics = $Lyrics

func _ready():
	OS.open_midi_inputs()
	print(OS.get_connected_midi_inputs())

func _input(input_event):
	if input_event is InputEventMIDI:
		_print_midi_info(input_event)
		play_sample(input_event)
	elif input_event is InputEvent:
		play_sample_keyboard()

func _print_midi_info(midi_event: InputEventMIDI):
	#print(midi_event)
	#print("Channel " + str(midi_event.channel))
	#print("Message " + str(midi_event.message))
	print("Pitch " + str(midi_event.pitch))
	#print("Velocity " + str(midi_event.velocity))
	#print("Instrument " + str(midi_event.instrument))
	#print("Pressure " + str(midi_event.pressure))
	#print("Controller number: " + str(midi_event.controller_number))
	#print("Controller value: " + str(midi_event.controller_value))

func play_sample_keyboard():
	if Input.is_action_just_pressed("a1"):
		audio_stream.stream = preload("res://samples/A01.ogg")
		audio_stream.play()
		lyrics.text = "[center]we str8 gassin cuttin str8 to da brix[/center]"
		
	if Input.is_action_just_pressed("a2"):
		audio_stream.stream = preload("res://samples/A02.ogg")
		audio_stream.play()
		lyrics.text = "[center]dis shit aint nothin 2 me man[/center]"

	if Input.is_action_just_pressed("a3"):
		audio_stream.stream = preload("res://samples/A03.ogg")
		audio_stream.play()
		lyrics.text = "[center]we smokin runtz[/center]"

	if Input.is_action_just_pressed("a4"):
		audio_stream.stream = preload("res://samples/A04.ogg")
		audio_stream.play()
		lyrics.text = "[center]shordee gotta bbl took dat shit out bcuz she culdnt run[/center]"

	if Input.is_action_just_pressed("a5"):
		audio_stream.stream = preload("res://samples/A05.ogg")
		audio_stream.play()
		lyrics.text = "[center]i had 2 do it to dem snipe[/center]"

	if Input.is_action_just_pressed("a6"):
		audio_stream.stream = preload("res://samples/A06.ogg")
		audio_stream.play()
		lyrics.text = "[center]i went Judge Judy on dat pussy snipe[/center]"

	if Input.is_action_just_pressed("a7"):
		audio_stream.stream = preload("res://samples/A07.ogg")
		audio_stream.play()
		lyrics.text = "[center]im not loyal 2 anybody ima demon[/center]"

	if Input.is_action_just_pressed("a8"):
		audio_stream.stream = preload("res://samples/A08.ogg")
		audio_stream.play()
		lyrics.text = "[center]i have no loyalty 4 any1[/center]"

	if Input.is_action_just_pressed("a9"):
		audio_stream.stream = preload("res://samples/A09.ogg")
		audio_stream.play()
		lyrics.text = "[center]never did never will[/center]"

	if Input.is_action_just_pressed("a10"):
		audio_stream.stream = preload("res://samples/A10.ogg")
		audio_stream.play()
		lyrics.text = "[center]ha ha[/center]"

	if Input.is_action_just_pressed("a11"):
		audio_stream.stream = preload("res://samples/A11.ogg")
		audio_stream.play()
		lyrics.text = "[center]*vamp laugh*[/center]"

	if Input.is_action_just_pressed("a12"):
		audio_stream.stream = preload("res://samples/A12.ogg")
		audio_stream.play()
		lyrics.text = "[center]dis shit aint NOTHIN 2 me man[/center]"

	if Input.is_action_just_pressed("a13"):
		audio_stream.stream = preload("res://samples/A13.ogg")
		audio_stream.play()
		lyrics.text = "[center]movin lyke draxula we gettit bak in bluud[/center]"

	if Input.is_action_just_pressed("a14"):
		audio_stream.stream = preload("res://samples/A14.ogg")
		audio_stream.play()
		lyrics.text = "[center]i rly did dis[/center]"

	if Input.is_action_just_pressed("a15"):
		audio_stream.stream = preload("res://samples/A15.ogg")
		audio_stream.play()
		lyrics.text = "[center]im rly him[/center]"

	if Input.is_action_just_pressed("a16"):
		audio_stream.stream = preload("res://samples/A16.ogg")
		audio_stream.play()
		lyrics.text = "[center]i have no sympathy[/center]"


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
		
	#if midi_event.pitch == "pitch_number" and midi_event.velocity >= 15:
		#audio_stream = preload("file goes here")
		#audio_stream.play()
