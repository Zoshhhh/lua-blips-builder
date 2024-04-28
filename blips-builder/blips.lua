-- Script pour ajouter des blips sur la carte dans FiveM
local blips = {
    {title="Police Nationale - FA", colour=1, id=60, x=394.23004150391, y=-1606.0131835938, z=29.337348937988},
-- Add others blips
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      local blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(blip, info.id)
      SetBlipDisplay(blip, 4)
      SetBlipScale(blip, 0.9)
      SetBlipColour(blip, info.colour)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(blip)
    end
end)
