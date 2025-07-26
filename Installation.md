---
layout: default
title: Installation
nav_order: 2
---


# Installation

If you're using a Windows machine or an M chip Mac then you can use the pre-built binaries available on release. This guide is for how to run Ghost from source code. Ghost requires Python 3.10+ installed!

> [!WARNING]  
> Using Ghost is against Discord's TOS and <ins>can</ins> result in account termination! To avoid termination, do not use any commands in bigger servers especially ones moderated by Discord staff and do not use any of the abuse commands. I do not take any responsibility for the actions that may be caused by using Ghost. Please use with caution!

### 1. Clone the repository
Open your terminal or command prompt and run:

```bash
git clone https://github.com/ghostselfbot/ghost
cd ghost
```

### 2. Set-up a Python virtual environment
Creating a virtual environment ensures Ghost runs in its own isolated Python environment.  

**Windows**
```bash
py -m venv .venv
.venv\Scripts\activate
```
**Linux & macOS**
```bash
python3 -m venv .venv
source .venv/bin/activate
```

> [!NOTE]
> If `python`, `python3` or `py` isn't recognized, make sure Python 3.10+ is installed and added to your system PATH.

### 3. Install required dependencies 
After activating your virtual environment, install the required packages:
```bash
pip install -r requirements.txt
```

### 4. Run Ghost!
Now you're ready to launch Ghost:
```bash
python3 ghost.py
```
Or on Windows:
```bash
py ghost.py
```
