extends Reference

func is_loaded() -> bool:
	var b = JavaScript.eval("globalThis.isLkZipLoaded == true") as bool
	return b

func get_base64() -> String:
	var base64 = JavaScript.eval("globalThis.lkzip") as String
	return base64
