class Prismalens < Formula
  desc "Investigates a firing alert with your coding agent and returns ordered evidence"
  homepage "https://prismalens.io"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.4/prismalens-0.5.4-darwin-arm64.tar.gz"
      sha256 "52cf7c2540dfbd9509346ee2049a23b104b9f46f1eabc738c51569fd30397845"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.4/prismalens-0.5.4-darwin-x64.tar.gz"
      sha256 "705a1c70867c79391a0399459a15a8531835d9b63aead0f306af2be552dceeff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.4/prismalens-0.5.4-linux-arm64.tar.gz"
      sha256 "33e0bd476fad82a6aeddd44bb825f94c46015e823076e81aba06212589283955"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.4/prismalens-0.5.4-linux-x64.tar.gz"
      sha256 "d6b629e4d946b3b87b5af3c60c658993ca7ef21e3692e18d39455966e24eb331"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/pl", libexec/"bin/prismalens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pl --version")
  end
end
