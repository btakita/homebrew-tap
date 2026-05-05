class ChromiumBridge < Formula
  desc "CLI bridging agents to Chromium-based browsers via Chrome DevTools Protocol"
  homepage "https://github.com/btakita/chromium-bridge"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4a49fb09eeea23ab0a58a928f182d1e509f73e413eca5cbbca38e5a48e4a9d26"
    end

    on_arm do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bc6dbd9a413f7d89a28a6b526cef9efea6b1bfc891da3afcd4034daada38dec9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f72625ccf8af3fb550e40ed65c31a6758a67d0643a94f7911bccf6b5960d695e"
    end

    on_arm do
      url "https://github.com/btakita/chromium-bridge/releases/download/v#{version}/chromium-bridge-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96520e53509e4cccbccb2134e552a7409849d08eb6cce4cc6f12f3c5d85cb968"
    end
  end

  def install
    bin.install "chromium-bridge"
  end

  test do
    assert_match "Usage: chromium-bridge", shell_output("#{bin}/chromium-bridge help")
  end
end
