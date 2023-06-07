---------------------------------------------------------------------------------------------
-- More detailed description of each config option can be found here: https://docs.dejv.it/ac_radio
---------------------------------------------------------------------------------------------

ac = {
	-- Language for notifications and UI
	locale = 'en',

	-- Whether to check for newer resource version and notify in server console.
	versionCheck = false,

	-- Whether to use custom notification function.
	useCustomNotify = true,

	-- Whether to use command for opening the radio UI.
	useCommand = false,

	-- Default keybind for the '/radio' command.
	commandKey = '',

	-- Whether to disconnect from radio when there is no radio item in player's inventory.
	noRadioDisconnect = true,

	-- Number of available frequencies.
	maximumFrequencies = 1000,

	-- How much the frequency value can change per step.
	frequencyStep = 0.01,

	-- Channel frequency restrictions.
	restrictedChannels = {
		[1] = {
			police = 0,         -- "police" with grade >=5 can access 1 MHz
		},
		[2] = {
			police = 0,
			ambulance = 0,
		},
		[3] = {
			police = 0,
			ambulance = 0,
		},
	},
	
	

	-- ! The following options will override the pma-voice convars.
	-- Whether to enable radio submix (voice sounds like on real radio).
	radioEffect = true,

	-- Whether to enable animation while talking on radio.
	radioAnimation = true,

	-- Default keybind for talking on radio.
	radioKey = 'LMENU',

}
