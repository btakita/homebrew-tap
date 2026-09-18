class ChromiumBridge < Formula
  desc "CLI bridging agents to Chromium-based browsers via Chrome DevTools Protocol"
  homepage "https://github.com/btakita/chromium-bridge"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6234628043c6568a1c10777873a36f666b6df9be62da03bbaa180ad520a85b63"
    end

    on_arm do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8b1265d5a3c2dcb21e0c16ea2bab078eb8a3b41e812f2e3fc21a3391270a6fce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8fdb89c3adf5c4074cd290fc58c00d6e330bc587f7e3ab3567342ef9353bb0f"
    end

    on_arm do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8c82369577df79391924bf651187b8e1dfe499edd699619ac389a15806894d5"
    end
  end

  def install
    bin.install "chromium-bridge"
  end

  test do
    assert_match "Usage: chromium-bridge", shell_output("#{bin}/chromium-bridge help")
  end
end
