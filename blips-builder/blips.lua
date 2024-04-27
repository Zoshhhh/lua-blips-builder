-- Script pour ajouter des blips sur la carte dans FiveM
local blips = {
    {title="Police Nationale - FA", colour=1, id=60, x=394.23004150391, y=-1606.0131835938, z=29.337348937988},
    {title="Police Nationale - WL", colour=1, id=60, x=118.75304412842, y=-882.48626708984, z=38.259010314941},
    {title="Gendarmerie Nationale - WL", colour=2, id=60, x=-788.294921875, y=6130.5991210938, z=9.304859161377},
    {title="Police Municipale - FA", colour=3, id=60, x=-370.33267211914, y=-239.60345458984, z=36.079895019531},
    {title="Brinks - FA", colour=4, id=60, x=-232.02359008789, y=-854.63934326172, z=30.426782608032},
    {title="Armee de terre - WL", colour=5, id=60, x=-2341.1599121094, y=3265.3742675781, z=32.827613830566},
    {title="Securite Civile - WL", colour=6, id=60, x=-1273.9721679688, y=-1360.2901611328, z=4.3033356666565},
    {title="C.S.P NORD - FA", colour=7, id=60, x=242.72610473633, y=6615.2553710938, z=31.260829925537},
    {title="C.S.P SUD - WL", colour=8, id=60, x=1203.3267822266, y=-1462.2772216797, z=34.930213928223},
    {title="SAMU DE PARIS - FA", colour=9, id=60, x=299.79373168945, y=-578.531433105473, z=43.260845184326},
    {title="CHU 1", colour=11, id=61, x=-1867.1088, y=-353.2848, z=58.0329},
    {title="Poste d'intervention", colour=11, id=61, x=-292.8190, y=-1058.1368, z=74.6158}
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
