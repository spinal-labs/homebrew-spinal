class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_darwin_arm64.tar.gz"
      sha256 "080e14b4bfe5283850bf4f5b0d3388fe60e319943035289fe507a173ecaa4819"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_darwin_amd64.tar.gz"
      sha256 "94a6eefae9be7e281a0ca377d8d8f99796fe43ca5711da8dda0cb5e6241bebb0"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_linux_arm64.tar.gz"
      sha256 "4a5dc41503a9681af897c49cc4e2bd92309f9dcc1e83281e4b1d2a3e99044d3e"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_linux_amd64.tar.gz"
      sha256 "b6b213f46b341213fe392aa0c2b6e26e23f9a6692950cbd67f1c8f3d709c163c"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
