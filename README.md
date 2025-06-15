<h1><img src="/assets/extension-icon.png" width="25" height="25"/>  Popcorn for Raycast</h1>

<div>
  <img src="/metadata/popcorn-1.png" width="30%"/>
  <img src="/metadata/popcorn-2.png" width="30%"/>
  <img src="/metadata/popcorn-3.png" width="30%" />
</div>

A Raycast extension that uses the Stremio API to search for movies and TV shows and stream them to local media players using Stremio addons. IINA is highly recommended for macOS users.

## Features

- 🎬 Search for movies and TV series
- 📈 Display trending media
- ⚙️ Stremio addon support
- 🔗 Stream directly into IINA, VLC, or any app of choice
- ✅ Mark TV episodes as watched
- 👁️ Recently watched content
- 📋 Copy stream URLs to clipboard

## Setup

Currently this extension is under review and has not yet been accepted on the Raycast extension store.

If you would like to install it before it is accepted, follow the instructions below.

1. Install Node.js
   - Option A: Download from https://nodejs.org/
   - Option B: Use brew `brew install node`
2. [Download](https://github.com/martipops/popcorn-raycast/archive/refs/heads/main.zip) or clone this repository
    - If you downloaded the .zip file, extract it to a folder in a safe place (e.g. Documents folder)
2. Open Terminal and navigate to the extracted directory
   - EX. `cd ~/Documents/popcorn-raycast-main`
3. Build the application by running `npm i; npm run build` (You should only need to do this once)
4. Open Raycast and search for "Import Extension"
5. Find and select the extension folder.
6. Configure your Stremio addon URL in the extensions preferences (e.g., `https://your-addon.com/manifest.json`)
7. Start searching for content!

### Troubleshooting

#### "Could not find command's executable JS file"
If you get this error, `npm install; npm run build` did not execute properly.
1. Make sure node is installed: `npm -v` returns a version number
2. Navigate to the project directory and run `npm install; npm run build`
3. If the extension still doesn't work, run `npm run dev` and the extension should automatically pop up. You shouldn't have to keep that command running in the backround.

## Usage

1. **Search Streams**: Type to search for movies or TV shows
2. **Explore Streams** *(COMING SOON)*: Explore popular movies and TV shows

## Full-functionality Requirements

- A Stremio addon that provides streams
- Media player (IINA or VLC recommended)

## Important Notice
This extension is designed to help you discover and organize media content. Please read and understand the following terms before using this extension.

## Content Discovery
- This extension helps you search for and discover publicly available media content
- Content streams are sourced from various public repositories and services
- We do not host, store, or distribute any copyrighted content
- All content is provided by third-party sources

## User Responsibility
- You are responsible for ensuring your use complies with local laws and regulations
- Respect intellectual property rights and copyright laws
- Only access content you have legal rights to view
- Use streaming services and platforms in accordance with their terms of service

## Privacy & Data
- Your search history and preferences are stored locally on your device
- No personal data is transmitted to external servers without your consent
- You can clear your data at any time through the extension settings

## Disclaimer
- We are not responsible for the availability, quality, or legality of content from third-party sources
- Use this extension at your own discretion and risk
- The extension developers are not affiliated with any streaming services or content providers

## Support
- For issues or questions, please refer to the extension documentation
- Report any concerns through the appropriate channels

## License

MIT
