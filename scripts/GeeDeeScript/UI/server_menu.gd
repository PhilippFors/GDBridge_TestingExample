extends Control

signal hostPressed
signal joinPressed

func onHostPressed():
	hostPressed.emit()

func onJoinPressed():
	joinPressed.emit()
