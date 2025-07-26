---
layout: default
title: Compiling
nav_order: 6
---

# Compiling

Before compiling Ghost you **must** have already set-up ghost to be run from source so follow the steps [here](https://github.com/ghostselfbot/ghost/wiki/1.-Installation). You will also require pyinstaller which is part of `requirements.txt`. Once you're ready, follow the steps below on how to compile Ghost!

### 1. Activate your virtual environment
You will need to work inside your virtual environment to insure pyinstaller uses the correct libraries.  

**Windows**
```bash
.venv\Scripts\activate
```
**Linux & macOS**
```bash
source .venv/bin/activate
```

### 2. Run the compile script
Ghost comes with a compile script for easy compilation using pyinstaller. This script works on Windows, Linux and macOS!
```bash
python3 compile.py
```
Or on Windows:
```bash
py compile.py
```

### 3. Run your compiled binary!
Your compiled binary will now be in the `dist/` folder and is ready to run! If you experience issues with the compiled version, run it through a terminal so you can see the debugging messages! 
