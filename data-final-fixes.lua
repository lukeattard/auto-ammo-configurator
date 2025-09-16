local value = 10

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
