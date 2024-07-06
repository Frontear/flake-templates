# Flake Templates
Simple flake templates to get you started developing fast in a [Nix-powered](https://nixos.org/) workflow.

## Table of Contents
- [Why Nix?](#why-nix)
- [Usage](#usage)
- [License](#license)

## Why Nix?
TODO

## Usage
First, ensure you have flakes activated in Nix. This is different depending on where and how you've installed Nix.

If you're using NixOS, add this to your configuration:
```nix
nix.settings.experimental-features = [ "nix-command" "flakes" ];
```

If you're using any other distro, add the following to either `~/.config/nix/nix.conf` or `/etc/nix/nix.conf`:
```conf
experimental-features = nix-command flakes
```

Once you have setup the above, navigate to your project directory and run `nix flake init -t github:Frontear/flake-templates#YOUR_LANGUAGE_HERE`:
```console
$ nix flake init -t github:Frontear/flake-templates#c
wrote: project/nix/shell.nix
wrote: project/nix/default.nix
wrote: project/nix/package.nix
wrote: project/nix
wrote: project/src/main.c
wrote: project/src
wrote: project/flake.nix
```

Finally, `cd` into the directory, run `nix develop` and enjoy having all the tools you need for your standard development experience.

## License
The templates found in this repository are subject to the GNU GPLv3 license. I encourage you all to post your changes and usages of these templates online, to share and spread the knowledge.

Please note that this license does not apply to your code, such as what is found in `src/`.
