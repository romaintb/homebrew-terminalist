# Homebrew Terminalist

This is the Homebrew tap for [Terminalist](https://github.com/romaintb/terminalist), a terminal-based Todoist client with modern TUI interface.

## Installation

```bash
brew tap romaintb/terminalist
brew install terminalist
```

## Usage

After installation:

1. Get your Todoist API token from https://todoist.com/prefs/integrations
2. Set the environment variable:
   ```bash
   export TODOIST_API_TOKEN=your_token_here
   ```
3. (Optional) Generate a config file:
   ```bash
   terminalist --generate-config
   ```
4. Run the application:
   ```bash
   terminalist
   ```

## Updating

To update Terminalist to the latest version:

```bash
brew upgrade terminalist
```

## License

MIT - See [Terminalist License](https://github.com/romaintb/terminalist/blob/main/LICENSE)
