script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    if event.setting == "ammo-auto-loader" then
      update_ammo_loaded()
    end
  end)
  
script.on_init(update_ammo_loaded)
script.on_configuration_changed(update_ammo_loaded)
  

function update_ammo_loaded()
	for name, ammo_turret in pairs(data.raw["ammo-turret"]) do
		
		if settings.startup["auto-ammo-loader-" .. name] then
			value = settings.startup["auto-ammo-loader-" .. name].value
			if ammo_turret.automated_ammo_count >= value then
				log(string.format("%s (%d)", ammo_turret.name, ammo_turret.automated_ammo_count))
			else
				log(string.format("%s (%d -> %d)", ammo_turret.name, ammo_turret.automated_ammo_count, value))
				ammo_turret.automated_ammo_count = value
			end
		end
	end
end
