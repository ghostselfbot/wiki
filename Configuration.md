---
layout: default
title: Configuration
nav_order: 3
---

# Configuration Guide

Ghost uses a JSON configuration file (`config.json`) to store settings. This guide explains all available configuration options.

## Configuration File Location

The configuration file is located at `config.json` in your Application Support directory depending on what OS you are using. See the list below to find where Ghost's data directory is:

- Windows: `%appdata%\Ghost`
- Linux: `~/.config/Ghost`
- Mac: `~/Library/Application Support/Ghost`

## Basic Configuration

The best and easiest way to configure Ghost is through the GUI. This will give you much better versatility and control. If you do not know how JSON works or what you are doing please do not touch the JSON file!  

### Essential Settings

```json
{
    "token": "YOUR_DISCORD_TOKEN",
    "prefix": ".",
    "theme": "ghost"
}
```

| Setting | Description | Default | Required |
|---------|-------------|---------|----------|
| `token` | Your Discord account token | `""` | ✅ Yes |
| `prefix` | Command prefix (what you type before commands) | `"."` | ✅ Yes |
| `theme` | Active theme name | `"ghost"` | ✅ Yes |

## Advanced Configuration

### API Integration

```json
{
    "apis": {
        "serpapi": "YOUR_SERPAPI_KEY"
    }
}
```

| Setting | Description | Required |
|---------|-------------|----------|
| `serpapi` | SerpAPI key for enhanced search functionality | Required for `searchimage` command. |

### Message Settings

```json
{
    "message_settings": {
        "auto_delete_delay": 15,
        "style": "image"
    }
}
```

| Setting | Description | Options | Default |
|---------|-------------|---------|---------|
| `auto_delete_delay` | Seconds before auto-deleting command messages | Any number | `15` |
| `style` | Message display style | `"image"`, `"codeblock"`, `"embed"` | `"image"` |

ℹ️ **Note**: Embed message style will only work if you enter a webhook embed in the `richembedwebhook` section of the config. If this is not given it will resort back to codeblocks!

### Session Spoofing

```json
{
    "session_spoofing": {
        "enabled": false,
        "device": "desktop"
    }
}
```

| Setting | Description | Options | Default |
|---------|-------------|---------|---------|
| `enabled` | Enable session spoofing | `true`, `false` | `false` |
| `device` | Device type to spoof | `"desktop"`, `"mobile"` | `"desktop"` |

⚠️ **Warning**: Session spoofing may increase detection risk. Use with caution.

### Snipers Configuration

Ghost includes snipers for Nitro codes and Privnote links:

```json
{
    "snipers": {
        "nitro": {
            "enabled": true,
            "ignore_invalid": false,
            "webhook": "",
            "name": "nitro"
        },
        "privnote": {
            "enabled": true,
            "ignore_invalid": false,
            "webhook": "",
            "name": "privnote"
        }
    }
}
```

#### Nitro Sniper

| Setting | Description | Default |
|---------|-------------|---------|
| `enabled` | Enable Nitro code sniping | `true` |
| `ignore_invalid` | Skip invalid/expired codes | `false` |
| `webhook` | Discord webhook URL for notifications | `""` |
| `name` | Display name for sniper | `"nitro"` |

#### Privnote Sniper

| Setting | Description | Default |
|---------|-------------|---------|
| `enabled` | Enable Privnote link sniping | `true` |
| `ignore_invalid` | Skip invalid links | `false` |
| `webhook` | Discord webhook URL for notifications | `""` |
| `name` | Display name for sniper | `"privnote"` |

### Rich Presence

```json
{
    "rich_presence": {
        "enabled": false,
        "client_id": "1018195507560063039",
        "state": "ghost aint dead",
        "details": "",
        "large_image": "ghost",
        "large_text": "",
        "small_image": "",
        "small_text": "",
        "name": "Ghost"
    }
}
```

| Setting | Description | Default |
|---------|-------------|---------|
| `enabled` | Show rich presence on Discord | `false` |
| `client_id` | Discord application client ID | `"1018195507560063039"` |
| `state` | Status text | `"ghost aint dead"` |
| `details` | Detail text | `""` |
| `large_image` | Large image key | `"ghost"` |
| `large_text` | Large image tooltip | `""` |
| `small_image` | Small image key | `""` |
| `small_text` | Small image tooltip | `""` |
| `name` | Application name | `"Ghost"` |

### Rich Embed Webhook

```json
{
    "rich_embed_webhook": "https://discord.com/api/webhooks/..."
}
```

Webhook URL for using the embed message style.

## Complete Configuration Example

```json
{
    "token": "YOUR_DISCORD_TOKEN_HERE",
    "prefix": ".",
    "theme": "ghost",
    "apis": {
        "serpapi": "your_serpapi_key_here"
    },
    "message_settings": {
        "auto_delete_delay": 15,
        "style": "image"
    },
    "session_spoofing": {
        "enabled": false,
        "device": "desktop"
    },
    "snipers": {
        "nitro": {
            "enabled": true,
            "ignore_invalid": false,
            "webhook": "https://discord.com/api/webhooks/your_webhook_here",
            "name": "nitro"
        },
        "privnote": {
            "enabled": true,
            "ignore_invalid": false,
            "webhook": "",
            "name": "privnote"
        }
    },
    "rich_presence": {
        "enabled": false,
        "client_id": "1018195507560063039",
        "state": "ghost aint dead",
        "details": "",
        "large_image": "ghost",
        "large_text": "",
        "small_image": "",
        "small_text": "",
        "name": "Ghost"
    },
    "rich_embed_webhook": ""
}
```

---

Next: Learn about available commands in the [Commands Reference](Commands.md)
