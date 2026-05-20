class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_darwin_arm64.tar.gz"
      sha256 "77652d2c133b952c422cb6a45e2d14a80cc3730bdb5f52dc7acdcb337f28337b"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_darwin_amd64.tar.gz"
      sha256 "08dc214e398b0e9f6ae6735ac4284323ccbbbefeb3691a2a70c738e46f4cb82a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_linux_arm64.tar.gz"
      sha256 "3ee01ab6fcbe556a6ee65502df39bc04c26f15ad3e5cbefa1730e41beb5ccdd5"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_linux_amd64.tar.gz"
      sha256 "c497e4055b5fd5eebf500c6ae4ec760140d229640233146131d2164ff50ed502"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
