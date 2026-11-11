class Prismalens < Formula
  desc "Investigates a firing alert with your coding agent and returns ordered evidence"
  homepage "https://prismalens.io"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.5/prismalens-0.5.5-darwin-arm64.tar.gz"
      sha256 "21fc40347e655bac2f5c634b8be6f89aa2e68a0b4c12c6adb98086567689963e"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.5/prismalens-0.5.5-darwin-x64.tar.gz"
      sha256 "0765414ac71e6d8634e7c07e3364f14845f7e9a934694dfbe697cd3c29e6dc9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.5/prismalens-0.5.5-linux-arm64.tar.gz"
      sha256 "a56faf102b7af07e80c68fa6ac39460505f4144a84c7c326020fb343a38bd23e"
    end
    on_intel do
      url "https://github.com/prismalens/prismalens/releases/download/v0.5.5/prismalens-0.5.5-linux-x64.tar.gz"
      sha256 "bc7231574a7d30d8ad7e62065e0dade5cd3ab3f2cf9e4f904476597fb873b813"
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
