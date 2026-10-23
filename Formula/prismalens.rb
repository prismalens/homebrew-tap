class Prismalens < Formula
  desc "Investigates a firing alert with your coding agent and returns ordered evidence"
  homepage "https://prismalens.io"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.2/prismalens-0.5.2-darwin-arm64.tar.gz"
      sha256 "00013c5aec756bf5565bf6e942cea428655f21da76d0eddd5f06e4c143df7963"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.2/prismalens-0.5.2-darwin-x64.tar.gz"
      sha256 "aa57166f566097c1372621887aa83d6a4d16642c184c47789758c6a1a9ba1e0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.2/prismalens-0.5.2-linux-arm64.tar.gz"
      sha256 "3c47a691b342dbbd6c4d3faa11ec4382597649f69f0791248f64349abe0bb2f4"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.2/prismalens-0.5.2-linux-x64.tar.gz"
      sha256 "7792872e354cc949c649c762d1048731ac59cdb77382aee74f18dfa40d9ad041"
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
