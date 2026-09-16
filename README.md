# Prospero CLI for Homebrew

Install the command-line book tracker and terminal dashboard for [Prospero's Study](https://prospero.study).

## Install

With [Homebrew](https://brew.sh) installed:

```sh
brew install stevengregory/prospero-cli/prospero
```

This installs the published binary for your platform. macOS and Linux are supported on Apple Silicon / ARM64 and Intel / AMD64.

## Use

```sh
prospero --version
prospero --help
prospero login
prospero dashboard
```

Sign in with your Prospero's Study account to manage your library. The CLI connects to `https://api.prospero.study` by default. Visit [Prospero's Study](https://prospero.study) to request passage if you need an account.

Use `--plain` for plain-text output:

```sh
prospero books --plain
```

## Upgrade

```sh
brew update
brew upgrade stevengregory/prospero-cli/prospero
```

## Uninstall

```sh
brew uninstall prospero
brew untap stevengregory/prospero-cli
```

Uninstalling the package leaves your local CLI configuration in `~/.prospero/`.

## Package verification

The formula downloads versioned release archives from `downloads.prospero.study` and verifies their SHA-256 checksums. Every change runs installation and offline configuration tests on all four supported platforms. The `Verify` check passes only when all platform jobs succeed.
