cask "mumble-native" do
  version "1.6.1001"
  sha256 "332c3a1343719bbcea345cb5a1060c7322132244a2165f1325ff06bb7eea3c9e"

  # Upstream tag is v1.6.0-alpha2; the app and DMG report 1.6.1001.
  url "https://github.com/mumble-voip/mumble/releases/download/v1.6.0-alpha2/mumble_client-#{version}.arm64.dmg"
  name "Mumble"
  desc "Native arm64 Mumble client"
  homepage "https://www.mumble.info/"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Mumble.app"

  # The app is ad-hoc signed, so remove the quarantine flag after install.
  # Without this, Gatekeeper requires a right-click Open on first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Mumble.app"], must_succeed: false
  end
end
