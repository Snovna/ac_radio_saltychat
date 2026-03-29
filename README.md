# ac_radio_saltychat

Fork of [ac_radio](https://github.com/acscripts/ac_radio) adapted to work with SaltyChat instead of pma-voice. Provides a radio UI for FiveM with frequency selection, volume control, presets, and job-based channel restrictions.

## Features

- NUI-based radio interface with prop and animation
- Join/leave radio frequencies via SaltyChat
- Volume control (up, down, mute/unmute)
- Two frequency presets (saved per client via KVP)
- Job-based restricted channels
- Configurable frequency range and step size
- Multi-framework support (ESX, QBCore, ox_core)
- Usable item support (ESX/QBCore) or command-based opening
- Auto-disconnect when radio item is removed from inventory
- Multi-language locale system

## Dependencies

- [saltychat](https://github.com/v10networkscom/saltychat-fivem)
- A supported framework (ESX, QBCore, or ox_core)

## Installation

1. Place `ac_radio_saltychat` in your resources folder.
2. Add `ensure ac_radio_saltychat` to your `server.cfg` (after `saltychat`).
3. Adjust settings in `config.lua`.

## Configuration

Edit `config.lua` to set locale, keybinds, frequency limits, and restricted channels. See the [original documentation](https://docs.dejv.it/ac_radio) for detailed config descriptions.
