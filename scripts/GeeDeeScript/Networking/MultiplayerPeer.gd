extends Node

@onready var peer: MultiplayerPeer = ENetMultiplayerPeer.new()
var PORT: int = 9999

func _ready() -> void:
	$CanvasLayer/ServerMenu.show()
	$PlayerSpawner.spawn_function = spawn_player

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("console"):
		$ConsoleWindow.visible = !$ConsoleWindow.visible
		if $ConsoleWindow.visible:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func on_host_ready():
	$CanvasLayer/ServerMenu.hide()
	peer.create_server(PORT)
	multiplayer.multiplayer_peer = peer
	multiplayer.peer_connected.connect(add_player)
	multiplayer.peer_disconnected.connect(remove_player)
	add_player(multiplayer.get_unique_id())

func on_join_ready():
	$CanvasLayer/ServerMenu.hide()
	peer.create_client("localhost", PORT)
	multiplayer.multiplayer_peer = peer

func add_player(uniqueId: int):
	$PlayerSpawner.spawn(uniqueId)

@rpc("authority", "call_local", "reliable")
func sync_connectedPlayers(player, id: int):
	pass
	#var info = PlayerInformation.new()
	#info.pawn = player
	#info.steamId = id
	#MultiplayerGlobal.connectedPlayers.append(info)

func spawn_player(uniqueId):
	pass
	#var p = player.instantiate()
	#p.uniqueId = uniqueId
	#p.get_node("Body").position = Vector3(0, 1, 0)
	#p.set_multiplayer_authority(uniqueId, true)
	#p.name = str(p.name + str(uniqueId))
	#sync_connectedPlayers.rpc(player, uniqueId)
	#return p

func remove_player(uniqueId: int):
	pass
	#var players = MultiplayerGlobal.connectedPlayers
	#for i in players.size():
		#if players[i].uniqueId == uniqueId:
			#player.queue_free()
			#players.remove_at(i)
			#return
