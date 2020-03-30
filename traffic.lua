Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		SetPedDensityMultiplierThisFrame(config.pedFrequency)
		SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

		SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrquency)
		SetParkedVheicleDensityThisFrame(config.trafficFrquency)
		SetVehicleDensityMultiplierThisFrame(config.trafficFrquency)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(30000)		
		Clients()
	end

Citizen.CreateThread(function()
	SwitchTrainTrack(0, config.trainOn)
	SwitchTrainTrack(3, config.trainOn)
	SetRandomTrains(false)
end)


local config = {
	pedFrequency = 1.0,
	trafficFrquency = 1.0
	trainOn = false
}
