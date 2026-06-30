class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_darwin_arm64.tar.gz"
      sha256 "de2ddb5fea9c5741000f3ef6a95393113ed42d80002c224c99d7cd35ae6683e7"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_darwin_amd64.tar.gz"
      sha256 "c88c803aef83f43c25fff3069528f13c9225c3e16e96f12e95f8d846e8ce4787"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_linux_arm64.tar.gz"
      sha256 "1bb048df1d34e1f401350e55cdf113185598acf44269f99ce75a69682d5e01ce"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_linux_amd64.tar.gz"
      sha256 "a0f1418fa53f8a067e12ff2f195a7be7b952eb476d39353de9ef3856c87b8bb5"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
