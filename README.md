# homebrew-tap

Personal Homebrew tap.

## Mumble

Native arm64 Mumble build, produced from the official source by
`mumble-macos-build` in the dotfiles repo.

```bash
brew tap jdorn-eu/tap
brew install --cask mumble-native
```

The app is ad-hoc signed and arm64-only. It requires macOS 27+ because the
Homebrew build dependencies target that SDK.
