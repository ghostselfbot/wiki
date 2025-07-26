---
layout: default
title: Commands
nav_order: 3
---

# Commands Reference

Ghost includes 150+ commands across 12 categories. This comprehensive reference documents all available commands.

## Command Usage

All commands use the prefix specified in your config (default: `.`)

**Format**: `{prefix}{command} [required] <optional>`

- `[required]` - Required parameters
- `<optional>` - Optional parameters 
- `{prefix}` - Your configured command prefix

## Quick Command List

Use `{prefix}help` to see all available commands or `{prefix}help [command]` for specific command info.

---

## General

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `help` | A list of all categories. |  |  |
| `ping` |  |  |  |
| `search` | Search for commands. | `[query]` |  |

---

## Account

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `backups` | List your backups. |  |  |
| `backup` | Backup commands. |  |  |
| `hypesquad` | Change your hypesquad. | `[hypesquad]` | `changehypesquad` |
| `status` | Change your status. | `[status]` | `changestatus` |
| `customstatus` | Change your custom status. | `[status]` | `changecustomstatus` |
| `clearstatus` | Clear your custom status. |  |  |
| `playing` | Change your playing status. | `[status]` | `changeplaying` |
| `streaming` | Change your streaming status. | `[status]` | `changestreaming` |
| `nickname` | Change your nickname. | `[nickname]` | `changenickname, nick` |
| `clearnickname` | Clear your nickname. |  | `resetnickname, clearnick, resetnick` |
| `discordtheme` | Change your discord theme. | `[theme]` | `changetheme` |
| `yoinkrpc` | Yoink someone's RPC. | `[user]` | `rpcyoink, stealrpc, stealrichpresence, yoinkrichpresence, clonerpc, clonerichpresence` |
| `yoinkmemberrpc` | yoinkrpc for member pings only! | `[member]` |  |

---

## Fun

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `fun` | Fun commands. |  |  |
| `rickroll` | Never gonna give you up. |  |  |
| `coinflip` | Flip a coin. |  | `cf` |
| `iq` | Get the IQ of a user. | `[user]` | `howsmart, iqrating` |
| `howgay` | Get the gayness of a user. | `[user]` | `gay, gayrating` |
| `howblack` | Get the blackness of a user. | `[user]` | `black, blackrating` |
| `pp` | Get the size of a user's dick. | `[user]` | `dick, dicksize, penis` |
| `rps` | Play rock paper scissors |  |  |
| `slots` | Play a slot machine. |  | `slotmachine, slot` |
| `encodemorsecode` | Encode text to morse code. | `[text]` | `morsecode` |
| `decodemorsecode` | Decode morse code to text. | `[morse]` | `morsecodedecode` |
| `blocksend` | Send a message to a blocked user. | `[user] [message]` |  |
| `randomdata` | Generate random data. | `[type]` |  |
| `kanye` | Random kanye quote. |  |  |
| `socialcredit` | Get a user's social credit score. | `[user]` | `socialcreditscore, socialcreditrating, socialcredits, socialrating, socialscore` |
| `dice` | Roll a dice with a specific side count. | `[sides]` | `roll` |
| `rainbow` | Create rainbow text. | `[text]` | `rainbowtext` |
| `rainbowreact` | Create a rainbow reaction | `['[msg id]']` |  |
| `dox` | Dox a user. | `['[user]']` |  |
| `meme` | Gets a random meme. |  | `getmeme, randommeme` |
| `dadjoke` | Get a dad joke. |  |  |
| `insult` | Get a random insult. |  |  |
| `compliment` | Get a random compliment. |  |  |
| `catfact` | Get a random cat fact. |  |  |
| `yomomma` | Get a yo momma joke. |  |  |
| `8ball` | Ask the magic 8ball a question. | `[question]` | `magic8ball, ask8ball` |
| `fakenitro` | Fake a nitro gift. |  |  |
| `hyperlink` | Create a hyperlink | `[link] [text]` | `hyperl` |
| `aura` | Check a user's aura. | `[user]` | `karma` |
| `gyatt` | See if they've got GYATTT | `[user]` | `gyat` |
| `playsound` | Play a 5 second sound. | `[mp3_url]` |  |

---

## Img

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `img` | Image commands. |  | `image` |
| `gato` | Get a random cat picture. |  | `cat, catpic` |
| `doggo` | Get a random dog picture. |  | `dog, dogpic` |
| `bird` | Get a random bird picture. |  | `birb, birdpic` |
| `fox` | Get a random fox picture. |  | `foxpic` |
| `achievement` | Make a custom Minecraft achievement. | `[icon] [text]` | `mcachievement` |
| `challenge` | Make a custom Minecraft challenge. | `[icon] [text]` | `mcchallenge` |
| `discordmessage` | Create a fake Discord message. | `[user] [message]` | `fakediscordmessage, fakediscordmsg, fakediscord` |
| `searchimage` | Search for an image on google | `[query]` | `searchimg, imgsearch, imagesearch` |

---

## Info

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `info` | Information commands. |  | `information` |
| `iplookup` | Look up an IP address. | `[ip]` | `ipinfo` |
| `userinfo` | Get information about a user. | `[user]` | `ui` |
| `serverinfo` | Get information about the server. |  | `si` |
| `servericon` | Get the icon of the server. |  |  |
| `webhookinfo` | Get information about a webhook. | `[webhook url]` | `wi` |
| `mutualservers` | Get a list of all members in mutual servers. | `[server id]` | `mutualservermembers` |
| `avatar` | Get the avatar of a user. | `[user]` | `av` |
| `tickets` | Get a list of all tickets available in the server. |  |  |
| `hiddenchannels` | List all hidden channels. |  | `privchannels, privatechannels` |
| `crypto` | Lookup current data on a cryptocurrency. | `[cryptocurrency]` |  |
| `bitcoin` | Get the current data on Bitcoin. |  | `btc` |
| `ethereum` | Get the current data on Ethereum. |  | `eth` |
| `tether` | Get the current data on Tether. |  | `usdt` |
| `dogecoin` | Get the current data on Dogecoin. |  | `doge` |
| `timestamp` | Create a relative dynamic timestamp. | `[DD MM YYYY HH:MM:SS]` |  |

---

## Mod

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `mod` | Moderation commands. |  | `moderation` |
| `clear` | Clear a number of messages. | `[number]` | `purge` |
| `dmpurge` | Purge a number of messages in a DM. | `[number] [user id]` |  |
| `purgechat` | Purge the entire chat. |  |  |
| `dumpchat` | Get the chats history. | `[message count] [channel id]` |  |
| `firstmessage` | Get the first message in the chat. |  |  |
| `lock` | Lock the channel. |  |  |
| `unlock` | Unlock the channel. |  |  |
| `banlist` | List all banned members. |  |  |
| `ban` | Ban a member from the command server. | `[member]` |  |
| `unban` | Unban a member from the command server. | `[id]` |  |
| `kick` | Kick a member from the command server. | `[member]` |  |
| `mute` | Mute a member. | `[member] [length]` | `timeout` |
| `unmute` | Unmute a member. | `[member]` | `untimeout` |
| `poll` | Create a poll. | `[question] [options]` |  |
| `discordpoll` | Create a poll using discord's poll feature. | `[question] [options]` |  |

---

## Nsfw

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `nsfw` | NSFW commands. |  | `notsafeforwork` |
| `hentai` | Get a random hentai image. |  |  |
| `thighs` | Get a random thighs pic. |  | `thigh` |
| `ass` | Get a random ass pic. |  |  |
| `boobs` | Get a random tit pic. |  | `tits, tittys, titty` |
| `pussy` | Get a random pussy pic. |  |  |
| `porn` | Get a random porn gif. |  | `porngif` |
| `neko` | Get a random neko image. |  |  |

---

## Text

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `text` | Text commands. |  |  |
| `shrug` | Shrug your arms. |  |  |
| `tableflip` | Flip the table. |  |  |
| `unflip` | Put the table back. |  |  |
| `lmgtfy` | Let me Google that for you. | `[search]` | `letmegooglethatforyou` |
| `fakepurge` | Flood chat with blank messages |  |  |
| `ascii` | Create ascii text art from text. | `[text]` |  |
| `aesthetic` | Make your text aesthetic. | `[text]` |  |
| `chatbypass` | Bypass chat filters. | `[text]` | `bypass` |
| `regional` | Make your text out of emojis. | `[text]` |  |
| `randomcase` | Make your text random case. | `[text]` |  |
| `animate` | Animate your text. | `[text]` |  |
| `cembed` | Create a custom embed. | `[title] [description] [footer] [colour] [image]` | `customembed` |
| `passwordgen` | Generate a password. | `[length]` | `genpassword` |
| `codeblock` | Create a codeblock. | `[language] [code]` | `block` |
| `json` | Create a json codeblock. | `[json]` | `jblock` |
| `python` | Create a python codeblock. | `[python]` | `pyblock` |
| `js` | Create a javascript codeblock. | `[javascript]` | `jsblock, javascript` |
| `html` | Create a html codeblock. | `[html]` | `htmlblock` |
| `css` | Create a css codeblock. | `[css]` | `cssblock` |
| `java` | Create a java codeblock. | `[java]` | `javablock` |
| `c` | Create a c codeblock. | `[c]` | `cblock` |
| `cpp` | Create a cpp codeblock. | `[cpp]` | `cppblock` |
| `php` | Create a php codeblock. | `[php]` | `phpblock` |
| `lua` | Create a lua codeblock. | `[lua]` | `luablock` |
| `reverse` | Reverse your text. | `[text]` |  |

---

## Theming

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `theming` | Theme commands. |  | `design` |
| `themes` | Lists all your themes. |  |  |
| `theme` | Theme commands. |  |  |
| `imagemode` | Set your theme style to image. |  | `imgmode` |
| `textmode` | Set your theme style to codeblock. |  | `codeblockmode` |
| `richembedmode` | Set your theme style to embed. |  | `embedmode` |
| `richembedwebhook` | Set your rich embed webhook. | `[webhook]` |  |

---

## Util

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `util` | Utility commands. |  | `utilities, utility, utils` |
| `config` | Configure ghost. |  | `cfg` |
| `restart` | Restart the bot. |  | `reboot, reload` |
| `quit` | Quit the bot. |  | `exit` |
| `settings` | View ghost's settings. |  |  |
| `prefix` | Set the prefix | `[prefix]` |  |
| `clearcache` | Clear the cache |  |  |
| `richpresence` | Toggle rich presence |  | `rpc` |
| `resetrichpresence` | Reset rich presences to defaults. |  | `resetrpc, rpcreset` |
| `specs` | View your computer's specs |  |  |
| `sessionspoofer` | Spoof your session | `[device]` | `sessionspoof, spoofsession` |
| `uptime` | View the bot's uptime |  |  |
| `allcmds` | List all commands |  |  |
| `clearconsole` | Clear the console |  |  |
| `commandhistory` | Get the history of commands used. |  | `cmdhistory` |
| `spypet` | Get a list of every message a member has sent in mutual servers. | `[member]` |  |

---

## Abuse

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `abuse` | Abusive commands. |  |  |
| `spam` | Spam a channel. | `[amount] [message]` |  |
| `servernuke` | Nuke a server. |  | `nukeserver` |
| `channelflood` | Flood guild with a crap ton of channels. | `[channel name]` |  |
| `channelspam` | Flood a channel with a message of your choosing. | `[msg amount] [message]` |  |
| `channelping` | Ping a user in every available channel. | `['[user] [ping amount]']` |  |
| `massping` | Ping every user in a server. | `[msg amount] [guild id]` | `hahafunny` |
| `pollspam` | Flood a channel with polls. |  |  |

---

## Sniper

| Command | Description | Usage | Aliases |
|---------|-------------|-------|---------|
| `sniper` | Sniper commands. |  |  |
| `snipers` | List all snipers. |  |  |
| `sniperstatus` | Check the status of a sniper. | `[sniper]` |  |
| `ignoreinvalidcodes` | Toggle ignoring invalid codes for a sniper. | `[sniper]` | `sniperignore, ignoreinvalid` |
| `nitrosniper` | Toggle the Nitro sniper. | `[on/off]` |  |
| `privnotesniper` | Toggle the Privnote sniper. | `[on/off]` |  |
| `webhooksetup` | Setup webhooks for all snipers. |  | `setupwebhooks` |

---

**Remember**: Always use Ghost responsibly and in accordance with Discord's Terms of Service. We are not responsible for any consequences resulting from misuse of these commands.
