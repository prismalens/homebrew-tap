class Prismalens < Formula
  desc "Investigates a firing alert with your coding agent and returns ordered evidence"
  homepage "https://prismalens.io"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.3/prismalens-0.5.3-darwin-arm64.tar.gz"
      sha256 "4cfde171c286e019744a847d2ab002e6ed848847197b57ccd79d00408019aef7"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.3/prismalens-0.5.3-darwin-x64.tar.gz"
      sha256 "d3a37f0e87460e631721468feea8ce4b272d6265c4441d0c9ba7dea5c8ee6ee0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.3/prismalens-0.5.3-linux-arm64.tar.gz"
      sha256 "c6fec620d52951156813b8ffd6da8e44d07a8ed6cfcd7b93f90775e772170478"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.3/prismalens-0.5.3-linux-x64.tar.gz"
      sha256 "4d42d60a49d3a3a3690af990dee38298eba91d19d75f22698840ef08a668fc50"
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
