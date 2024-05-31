# Is-a.KVM
Run a KVM Virtual Machine in Pterodactyl/Jexactyl, All for Free, Screw Lumen VM.

## Overview

This Egg allows you to set up and manage a KVM Server within your Pterodactyl/Jexactyl panel. It provides a convenient way to deploy and manage KVM instances with ease.


## ✨ Features

- Root
- Supports lots of linux os(s)
- Free
- Mirrors system processes (so you could program a sh script in your system to kill mining software)

## Supported Operating Systems

- Debian 13 (unstable), 12, 11, 10, sid (unstable)
- Ubuntu 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS, 16.04 LTS
- Void Linux
- Alpine Linux
- CentOS 9 (Stream), 8 (Stream), 7
- Rocky Linux 9, 8
- Fedora 40, 39, 38
- AlmaLinux 9, 8
- Slackware Linux
- Kali Linux
- openSUSE
- Gentoo Linux
- Arch Linux
- Devuan Linux

## Getting Started

1. Download and upload the configuration file (egg.json) to your panel.
2. Voila, You got the egg
Feel free to customize the Egg settings and configurations to suit your requirements.

## How to add Systemctl (Fix systemctl error)

1. in your terminal, do `apt install curl -y`
2. Now do `curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py`
3. Voila, its fixed
   
## Contributing
Contributions are welcome. If you have any suggestions, improvements, or bug fixes, feel free to submit a pull request.
