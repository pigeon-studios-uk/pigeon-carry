# Changelog

All notable changes to Pigeon Carry are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

First release.

### Highlights

- `/carry` over the shoulder and `/piggyback` on the back
- Only once the other player accepts
- Checked by the server
- Character names on Qbox, QBCore and ESX
- 23 languages

### Added

- `/carry` and `/piggyback`, with GTA's paired animations and the carried player attached to the carrier.
- Requests the other player accepts or declines with keys (Y and N by default), running out after `Config.RequestSeconds`.
- Server checks on distance, being on foot, being busy and request rate.
- Ending it with either command, and when the carrier dies, ragdolls, gets in a vehicle or either player leaves.
- Character names in requests on Qbox, QBCore and ESX.
- `IsBusy` and `Stop` server exports and a `GetRole` client export.
- Messages and key binding names in 23 languages, following ox_lib's language with `Config.Locale = 'auto'`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-carry/commits/main
