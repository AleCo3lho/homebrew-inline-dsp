cask "inline-dsp" do
  version "1.0.0"
  sha256 "be1d00a718c1d0485f9220d2e7b94b4477e4045ab940435d57863db4858b08a4"

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
