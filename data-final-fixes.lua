-- data.raw.item["gun-turret"].automated_ammo_count = settings.startup["auto-ammo-loader-gun"].value
-- data.raw.item["rocket-turret"].automated_ammo_count = settings.startup["auto-ammo-loader-rocket"].value
local value = 50

for name, ammo_turret in pairs(data.raw["ammo-turret"]) do
	value = settings.startup["auto-ammo-loader-" .. name].value
  if ammo_turret.automated_ammo_count >= value then
    log(string.format("%s (%d)", ammo_turret.name, ammo_turret.automated_ammo_count))
  else
    log(string.format("%s (%d -> %d)", ammo_turret.name, ammo_turret.automated_ammo_count, value))
    ammo_turret.automated_ammo_count = value
  end
end