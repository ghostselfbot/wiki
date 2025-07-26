---
layout: default
title: Scripting
parent: Documentation
nav_order: 2
---

# Scripting Guide

Ghost features a scripting system which allows you to add your own features to Ghost via python code. Custom scripts use Python code allowing you to do anything you want with Ghost. As an example, you will create a simple command that responds with what you give it.

### Example Script
To create this script we will utilize discord.py-self's command method. 
```python
@ghost.command(name="example", description="Respond with what you want", usage="[text]", aliases=["examplecommand"])
async def example(ctx, *, text: str = "Hello World"):
    await ctx.send(text)
```

### Installing scripts
To install a custom script, open the GUI and go to the scripts page. Here you can open the scripts folder with the button next to the search bar. This is where you can put your script file. If you have any files the script uses put them in this folder too. Once you're done, restart Ghost and if the script has been setup correctly you should be able to use your command!

## Custom Methods
Ghost has a few custom variables that will allow you to interact with the config and a few other bits. 

### `_ghost_config`
This is Ghost's config class, below are the more important classes documented, if you would like to see all classes please refer to the source code. This class allows you to interact with the `config.json` file!

**`check()`**  
> Checks the config to ensure all default keys exist and theme values are complete. Missing values are filled in with defaults.

**`save(notify=True)`**  
> Saves the current config to disk. Also writes tokens and notifies any subscribed components if `notify` is `True`.

**`get(key)`**  
> Gets the value of the given key.  
> *Supports nested keys using dot notation, e.g. `"message_settings.auto_delete_delay"`*

**`set(key, value, save=True)`**  
> Sets the value of a config key and optionally saves it to disk.  
> *Supports nested keys using dot notation.*

**`get_theme_file(theme)`**  
> Loads and returns the raw JSON theme file by name.

**`save_theme_file(theme_name, new_obj)`**  
> Saves a modified theme dictionary as a theme JSON file.

**`get_theme(theme_name)`**  
> Returns a `Theme` object from a saved file or falls back to default if it doesn’t exist.

**`set_theme(theme_name, save=True)`**  
> Sets the active theme and optionally saves the config.

**`delete_theme(theme_name)`**  
> Deletes a saved theme. Automatically switches to the default `"ghost"` theme if the deleted one was active.

**`get_themes()`**  
> Returns a list of all available themes as `Theme` objects.

**`create_theme(theme_name)`**  
> Creates a new theme using the default template. Returns a `Theme` object or `False` if it already exists.

**`get_sniper(sniper)`**  
> Gets a specific sniper’s settings as a `Sniper` object from the config.

**`get_snipers()`**  
> Returns a list of all configured snipers as `Sniper` objects.

**`get_rich_presence()`**  
> Returns a `RichPresence` object configured from the current config.

**`get_session_spoofing()`**  
> Returns a tuple of `(enabled, device)` indicating the current spoofing settings.

**`set_session_spoofing(enabled, device)`**  
> Sets spoofing status and device type, then saves the config.

**`add_command_history(command_string)`**  
> Appends a command with a timestamp to the history log file.

**`get_command_history()`**  
> Returns a list of all previously executed commands with timestamps.

**`get_scripts()`**  
> Returns a list of all `.py` files in the `scripts` directory.

---

### `_ghost_session_spoofer`

**`patch_identify(new_os)`**
> Patches the WebSocket `identify` method with `new_method` and sets the target platform.  
> OS options: (`mobile`, `desktop`, `web`, or `embedded`)  

--- 

### `_ghost_bot_controller`
This is the bot controller, if you want to restart the bot or interact with the GUI you will use methods here.

**`check_token()`**
> Checks the given token to ensure its valid or not.  

**`start()`**
> This starts the bot without the GUI.  

**`stop()`**
> This stops the bot safely.  

⚠️ **Warning**: This method does not interact with the GUI so some components may break!  

**`restart()`**
> This restarts the bot safely.  

⚠️ **Warning**: This method does not interact with the GUI so some components may break!  

**`await setup_webhooks(checks=True)`**
> This creates a dedicated server for webhooks and creates channels and webhooks.  
> You must set `checks` to False to run this!  

**`restart_gui()`**
> This will safely restart the bot and GUI.

**`get_user_from_id(user_id)`**
> This will return a discord.User object from the given ID.  

**`get_avatar_from_url(url, size=50, radius=5)`**
> This will return an ImageTK image of the given url with the set size and radius.  

**`get_avatar(size=50, radius=5)`**
> This will get the bot account's avatar using `get_avatar_from_url` which can be used in the GUI.  

**`get_user()`**
> Returns the bot account user object.  

**`get_friends()`**
> Returns the bot account's friends.  

**`get_guilds()`**
> Returns the bot account's guilds.  

**`get_uptime()`**
> Returns the bot's uptime.  

**`get_latency()`**
> Returns the bot's latency.

--- 

### `console`
This method is used for printing to the terminal/console.

**`print_cmd(text)`**
> Logs a command with prefix CMD

**`print_info(text)`**
> Logs info with prefix INFO

**`print_success(text)`**
> Logs success with prefix SUCCESS

**`print_error(text)`**
> Logs error with prefix ERROR

**`print_warning(text)`**
> Logs warning with prefix WARNING

**`print_cli(text)`**
> Logs cli with prefix CLI

**`print_rpc(text)`**
> Logs rpc with prefix RPC

**`print_sniper(sniper, title, description, success=True)`**
> Logs sniper specific information  
> Success is whether or not the sniper succeeded  

--- 

### `cmdhelper`
This method is a general helper for commands.

**`format_time(seconds, short_form=True)`**
> Formats seconds into a more human readable time form.  

**`remove_emojis(text)`**
> Removes emojis, symbols etc.  

**`generate_help_pages(bot, cog_name)`**
> Generates a help page for a specific cog.  

**`await rich_embed(ctx, embed)`**
> This sends an embed to the rich embed webhook set in config and automatically forwards the message to the context channel.  

**`await send_message(ctx, embed_obj: dict, extra_title="", extra_message="", delete_after=None)`**
> This is used instead of `ctx.send` and takes an embed object and sends it either with codeblocks, images or rich embeds depending on whats set in the config.  
> `extra_title` is put in the same codeblock next to the title  
> `extra_message` is sent as a regular plain text message after everything  
> `delete_after` deletes the message after a set number of seconds. If set to `None` it uses the default auto delete delay, if set to `False` its disabled.  

**`await send_error_message(ctx, error_text)`**
> Uses `send_message` with preset for error messages.  

--- 

### `files`
This method is used to interact with the data files used by Ghost.

**`resource_path(relative_path)`**
> Use this when accessing resources that are going to be compiled with Ghost.  

**`get_application_support()`**
> Returns the application support/appdata/.config path.  

**`get_data_path()`**
> Returns the `data/` folder path.  

**`get_cache_path()`**
> Returns the `cache/` folder path.  

**`get_themes_path()`**
> Returns the `themes/` folder path.  

**`get_scripts_path()`**
> Returns the `scripts/` folder path.  

**`get_config_path()`**
> Returns the `config.json` file path.  

**`get_theme_path(theme_name)`**
> Returns the file path to the given theme_name.  

**`open_path_in_explorer(path)`**
> Opens a given path in the default file explorer.  

**`open_file_in_editor(file_path)`**
> Opens a given file in the default text editor.  

---

Ghost's scripting system is incredibly powerful and flexible. Start with simple scripts and gradually build more complex automation as you become familiar with the system. Happy scripting!
