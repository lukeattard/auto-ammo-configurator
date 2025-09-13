script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    if event.setting == "ammo-auto-loader" then
      update_ammo_loaded()
    end
  end)
  
script.on_init(update_ammo_loaded)
script.on_configuration_changed(update_ammo_loaded)
  

function update_ammo_loaded()
	for name, prototype in pairs(data.raw["ammo-turret"]) do
		if prototype.automated_ammo_count then
			prototype.automated_ammo_count = 50
		end
	end
end

