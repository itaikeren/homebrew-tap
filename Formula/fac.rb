class Fac < Formula
  desc "Fig-style autocomplete for the macOS terminal"
  homepage "https://github.com/itaikeren/fac"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itaikeren/fac/releases/download/v0.1.0/fac-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "17edd2885d900a2095ddb8c860fbc56fef7bd8391bdef1af073db50997e401b1"
  end

  on_intel do
    url "https://github.com/itaikeren/fac/releases/download/v0.1.0/fac-0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "5f180ee679d4e6541686d6898f99d39571a6b6d1c0a5abca6b23d98c65d6f4cf"
  end

  def install
    bin.install "fac"
  end

  def caveats
    <<~EOS
      Run `fac init` to start fac in your terminals.
    EOS
  end

  test do
    assert_match "fac #{version}", shell_output("#{bin}/fac --version")
  end
end
