<!-- This file is auto-generated from sections/. Do not edit directly.To update: edit the relevant file in sections/ then run: make build -->

# Awesome WoW

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of resources and communities for World of Warcraft developers, modders, and enthusiasts, covering **Vanilla**, **The Burning Crusade**, and **Wrath of the Lich King** only.

## Expansion key

- ![Vanilla](assets/icon_vanilla.png) Vanilla (1.12.1)
- ![TBC](assets/icon_tbc.png) The Burning Crusade (2.4.3)
- ![WotLK](assets/icon_wotlk.png) Wrath of the Lich King (3.3.5)

## Contents

- [Documentation](#documentation)
- [Community & learning resources](#community--learning-resources)
  - [Forums & wikis](#forums--wikis)
  - [Subreddits](#subreddits)
  - [Discord servers](#discord-servers)
- [Server emulators](#server-emulators)
  - [Alpha](#alpha)
  - [Vanilla](#vanilla)
  - [The Burning Crusade](#the-burning-crusade)
  - [Wrath of the Lich King](#wrath-of-the-lich-king)
- [Tools](#tools)
  - [Files and Archives](#files-and-archives)
  - [Models and Maps](#models-and-maps)
  - [Network](#network)
- [Libraries](#libraries)
  - [Archives](#archives)
  - [File Formats](#file-formats)
- [Contributing](#contributing)
- [License](#license)

---

## Documentation

Reference documentation for WoW file formats, network protocols, and game data.

- [Stormlib - MPQ Archives](http://www.zezula.net/en/mpq/main.html): Detailed information regarding the MPQ (MoPaQ) archive file format. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [wowdev.wiki](https://wowdev.wiki): Reference wiki documenting detailed info on file formats, such as M2, WMO, ADT, BLP, MPQ, DBC, and more. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)


---

## Community & learning resources

Places to learn, get help, and connect with other WoW developers and enthusiasts.

### Forums & wikis

- [OwnedCore](https://www.ownedcore.com/forums/world-of-warcraft/): Long-running WoW emulation and private server development forum with dedicated subforums for server cores and addon dev. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [AzerothCore Module Catalogue](https://www.azerothcore.org/catalogue.html): Hub for browsing community AzerothCore modules, custom scripts, and database patches. ![WotLK](assets/icon_wotlk.png)

### Subreddits

- [r/classicwow](https://www.reddit.com/r/classicwow): General community for WoW Classic players covering all legacy expansions. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [r/wowservers](https://www.reddit.com/r/wowservers): Community for private server discussion, news, and reviews. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [r/wowdev](https://www.reddit.com/r/wowdev): Community for WoW client/server developers, reverse engineers, and tool builders. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)

### Discord servers

- [vmangos](https://discord.gg/x9a2jt7): vmangos Vanilla server development Discord. ![Vanilla](assets/icon_vanilla.png)
- [CMaNGOS](https://discord.gg/Dgzerzb): CMaNGOS multi-expansion server project Discord. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [AzerothCore](https://discord.gg/gkt4y2x): Official AzerothCore development and support Discord. ![WotLK](assets/icon_wotlk.png)
- [TrinityCore](https://discord.trinitycore.org/): Official TrinityCore development and support Discord. ![WotLK](assets/icon_wotlk.png)


---

## Server emulators

Full server emulator projects that recreate the WoW game server for private or development use.

### Alpha

- [alpha-core](https://github.com/The-Alpha-Project/alpha-core): 0.5.3 experimental emulator written in Python.

### Vanilla

- [CMaNGOS Classic](https://github.com/cmangos/mangos-classic): CMaNGOS server for Vanilla WoW ![Vanilla](assets/icon_vanilla.png)
- [MangosZero](https://github.com/mangoszero/server): A full server suite for World of Warcraft Vanilla ![Vanilla](assets/icon_vanilla.png)
- [vmangos](https://github.com/vmangos/core): Progressive Vanilla Core aimed at all versions from 1.2 to 1.12 ![Vanilla](assets/icon_vanilla.png)

### The Burning Crusade

- [CMaNGOS TBC](https://github.com/cmangos/mangos-tbc): CMaNGOS server for The Burning Crusade ![TBC](assets/icon_tbc.png)
- [MangosOne](https://github.com/mangosone/server): A full server suite for World of Warcraft: The Burning Crusade ![TBC](assets/icon_tbc.png)

### Wrath of the Lich King

- [AzerothCore](https://github.com/azerothcore/azerothcore-wotlk): Modular, open-source server emulator with an active module ecosystem ![WotLK](assets/icon_wotlk.png)
- [CMaNGOS WotLK](https://github.com/cmangos/mangos-wotlk): CMaNGOS server for Wrath of the Lich King ![WotLK](assets/icon_wotlk.png)
- [MangosTwo](https://github.com/mangostwo/server): A full server suite for World of Warcraft: Wrath of the Lich King ![WotLK](assets/icon_wotlk.png)
- [TrinityCore](https://github.com/TrinityCore/TrinityCore): Widely regarded framework derived from MaNGOS targeting Wrath of the Lich King  ![WotLK](assets/icon_wotlk.png)


---

## Tools

Tools for viewing, editing, and working with WoW model and asset file formats (M2, WMO, ADT, BLP).

### Files and Archives

- [MPQEditor](http://www.zezula.net/en/mpq/download.html): GUI tool by the StormLib author for browsing, extracting, and modifying MPQ archives ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)
- [wow.export](https://github.com/Kruithne/wow.export): GUI toolkit for browsing MPQ archives and exporting 3D models (OBJ/GLTF), textures, sounds, and maps. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)

### Models and Maps

- [Noggit3](https://github.com/wowdev/noggit3): Open-source world editor for WoW terrain, textures, doodads, and WMO objects ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)

### Network

- [WowPacketParser](https://github.com/TrinityCore/WowPacketParser): Packet Parser for WoW by the makers of Trinity Core ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)


---

## Libraries

Libraries for working with WoW file formats, archives, and network protocols.

### Archives

- [StormLib](https://github.com/ladislav-zezula/StormLib): An open-source project that can work with Blizzard MPQ archives ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)

### File Formats

- [WoWFormatLib](https://github.com/Marlamin/WoWFormatLib): C# library for parsing M2, WMO, ADT, and BLP file formats. ![Vanilla](assets/icon_vanilla.png) ![TBC](assets/icon_tbc.png) ![WotLK](assets/icon_wotlk.png)


---

## Contributing

Contributions are welcome! Please open a pull request or issue. Make sure items meet the following criteria:

- Must be directly relevant to WoW Vanilla, TBC, or WotLK development, modding, or the community
- Must be actively maintained **or** historically significant with clear documentation
- Include the correct expansion badge(s) for the versions it supports
- No items targeting expansions beyond Wrath of the Lich King

See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.

## License

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](https://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, the contributors have waived all copyright and related rights to this work.

