local value = 10

for name, ammo_turret in pairs(data.raw["ammo-turret"]) do
	
  if settings.startup["auto-ammo-loader-" .. name] then
		ammo_turret.automated_ammo_count = settings.startup["auto-ammo-loader-" .. name].value
	end
  if settings.startup["auto-ammo-loader-" .. name .. "-slots"] then
		ammo_turret.inventory_size = settings.startup["auto-ammo-loader-" .. name .. "-slots"].value
	end
end
