<h1><img src="/assets/extension-icon.png" width="25" height="25"/>  Popcorn for Raycast</h1>


<div>
  <img src="/metadata/popcorn-1.png" width="30%"/>
  <img src="/metadata/popcorn-2.png" width="30%"/>
  <img src="/metadata/popcorn-3.png" width="30%" />
</div>

A Raycast extension that uses the Stremio API to search for movies and TV shows and stream them to local media players using Stremio addons. IINA is highly recommended for macOS users.

> <a href="https://ko-fi.com/martipops"><img src=https://github.githubassets.com/assets/ko_fi-53a60c17e75c.svg width="12"/> If you enjoy this extension, consider buying me a coffee!</a>

## Features

- Search for movies and TV series
- Display trending media
- Stremio addon support
- Stream directly into IINA, VLC, or any app of choice
- Mark TV episodes as watched
- Recently watched content
- Copy stream URLs to clipboard

## Installation

> **Note**: This extension is currently under review and has not yet been accepted on the Raycast extension store.

### Step 1: Download the Extension

Choose one of the following options:

- **Download ZIP**: [Download the latest release](https://github.com/martipops/popcorn-raycast/archive/refs/heads/main.zip)
- **Clone repository**:
  ```bash
  git clone https://github.com/martipops/popcorn-raycast.git
  ```

### Step 2: Extract and Navigate

If you downloaded the ZIP file, extract it to a safe location like `~/Documents/`. Then open Terminal and navigate to the project directory:

```bash
cd ~/Documents/popcorn-raycast-main
```

### Step 3: Install the Extension

Run the automated install script:

```bash
chmod +x install.sh
./install.sh
```

### Step 4: Configure Stremio Addon

1. Open Raycast
2. Go to Extensions → Popcorn → Preferences
3. Add your Stremio addon URL (example: `https://your-addon.com/manifest.json`)

### Step 5: Start Using

You're ready to start searching for movies and TV shows.

## Troubleshooting

### "Could not find command's executable JS file"

This error means `npm install; npm run build` did not execute properly. Follow these steps:

1. Verify Node.js is installed by running `npm -v` (should return a version number)
2. Navigate to the project directory and run:
   ```bash
   npm install
   npm run build
   ```
3. If the extension still doesn't work, try running `npm run dev` - the extension should automatically appear

## Usage

**Search Streams**: Type to search for movies or TV shows

## Requirements

To use all features, you need:

- A Stremio addon that provides streams
- Media player (IINA or VLC recommended)

## Terms of Use

This extension is designed to help you discover and organize media content. Please read and understand these terms before using this extension.

### Content Discovery

- This extension helps you search for and discover publicly available media content
- Content streams are sourced from various public repositories and services
- We do not host, store, or distribute any copyrighted content
- All content is provided by third-party sources

### User Responsibility

- You are responsible for ensuring your use complies with local laws and regulations
- Respect intellectual property rights and copyright laws
- Only access content you have legal rights to view
- Use streaming services and platforms in accordance with their terms of service

### Privacy and Data

- Your search history and preferences are stored locally on your device
- No personal data is transmitted to external servers without your consent
- You can clear your data at any time through the extension settings

### Disclaimer

- We are not responsible for the availability, quality, or legality of content from third-party sources
- Use this extension at your own discretion and risk
- The extension developers are not affiliated with any streaming services or content providers

## Support

For issues or questions, please refer to the extension documentation or report concerns through the appropriate channels.

## License

MIT