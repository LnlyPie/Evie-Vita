extends Node

var quests = {}

# Quests.new("Some Quest", "A description for the quest")
func new(name: String, description: String, maxprogress: int = 100):
	var quest = {
		"name": name,
		"description": description,
		"progress": 0,
		"max_progress": 100,
		"completed": false
	}
	quests[name] = quest
	Utils.send_notification("New Quest Avaliable!", name + "\n" + description, "quest")

func set_progress(name, progress: int):
	quests[name]["progress"] = progress

func complete(name):
	quests[name]["completed"] = true
	Utils.send_notification("Quest completed", name, "quest")

func is_completed(name):
	return quests[name]["completed"]

func get_desc(name):
	return quests[name]["description"]

func get_progress(name):
	return quests[name]["progress"]