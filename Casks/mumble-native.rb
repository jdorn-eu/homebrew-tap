cask "mumble-native" do
  version "1.6.870"
  sha256 "9c89dcbe431ed90e2b4bcf4bb510af14a3ad506cff1736052db449aa3a08df88"

  url "https://github.com/jdorn-eu/homebrew-tap/releases/download/v#{version}/Mumble-#{version}-arm64.dmg"
  name "Mumble"
  desc "Native arm64 Mumble client"
  homepage "https://www.mumble.info/"

  depends_on arch: :arm64
  depends_on macos: ">= :golden_gate"

  app "Mumble.app"

  # The app is ad-hoc signed, so remove the quarantine flag after install.
  # Without this, Gatekeeper requires a right-click Open on first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Mumble.app"]
  end
end
