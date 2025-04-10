### 📄 `NixOS` – README

# 🐧 NixOS Configuration – undertry's Flake-based Setup

> A modular, reproducible, and flake-powered NixOS configuration tailored for personal and experimental use.

![NixOS](https://img.shields.io/badge/NixOS-unstable-blue)
![Flakes](https://img.shields.io/badge/Flakes-enabled-green)

---

## 🧩 Overview

This repository contains my personal NixOS configuration, structured using [Nix flakes](https://nixos.wiki/wiki/Flakes) for enhanced reproducibility and modularity. It encompasses system-level settings, user environments, and custom modules, providing a comprehensive setup for my machines.

---

## 🗂️ Structure

```bash
NixOS/
├── flake.nix                  # Flake entry point
├── flake.lock                 # Flake lock file
├── hosts/                     # Host-specific configurations
│   └── <hostname>.nix         # Individual host settings
├── home/                      # Home Manager configurations
│   └── <username>.nix         # User-specific settings
├── modules/                   # Custom NixOS modules
│   └── <module>.nix           # Reusable configurations
└── hardware-configuration.nix # Auto-generated hardware config
```

- **flake.nix**: Defines inputs and outputs for the flake, including Nixpkgs, Home Manager, and other dependencies.
- **hosts/**: Contains configurations specific to each machine, allowing for tailored setups.
- **home/**: Manages user environments via [Home Manager](https://nix-community.github.io/home-manager/), enabling declarative user configurations.
- **modules/**: Houses custom modules for reusable and organized configurations.
- **hardware-configuration.nix**: Auto-generated file capturing hardware-specific settings.

---

## 🚀 Getting Started

### Prerequisites

- Nix with experimental features enabled:
  ```bash
  nix --experimental-features 'nix-command flakes' ...
  ```
- [Home Manager](https://nix-community.github.io/home-manager/) (integrated via flake)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/undertry/NixOS.git
   cd NixOS
   ```

2. **Build and switch to the configuration:**
   ```bash
   sudo nixos-rebuild switch --flake .#<hostname>
   ```

   Replace `<hostname>` with the desired host configuration name found in the `hosts/` directory.

---

## 🛠️ Features

- **Flake-enabled**: Leverages Nix flakes for improved reproducibility and dependency management.
- **Modular design**: Organized structure separating system, user, and module configurations.
- **Home Manager integration**: Declarative user environment management.
- **Custom modules**: Reusable configurations for common setups.
- **Hardware abstraction**: Separate hardware configurations for portability.

---

## 📌 Notes

- This configuration is a work in progress and may undergo significant changes.
- Designed primarily for personal use; adapt as needed for other environments.
- Contributions and suggestions are welcome!

---

## 🧑‍💻 Author

- **undertry (Tiago Comba)** – [GitHub Profile](https://github.com/undertry)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

> "Reproducible systems, one flake at a time." 🧊
