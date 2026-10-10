cask "inline-dsp" do
  version "1.1.0"
  sha256 "84a80ee3aa17e487dab9c441599e3a474ec4234d0afe60a9bfae1b5e6ca80540"

  url "https://github.com/AleCo3lho/inline-dsp/releases/download/v#{version}/InlineDSP-#{version}-macos.zip"
  name "InlineDSP"
  desc "Menu bar broadcast vocal chain for your microphone"
  homepage "https://github.com/AleCo3lho/inline-dsp"

  depends_on macos: :sonoma

  app "InlineDSP.app"

  uninstall quit: "io.github.aleco3lho.inline-dsp"

  zap trash: "~/Library/Preferences/io.github.aleco3lho.inline-dsp.plist"

  caveats <<~EOS
    InlineDSP needs a virtual audio cable to send its output to, e.g.:
      brew install --cask vb-cable

    The app is ad-hoc signed but not notarized. On first launch, allow it in
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
