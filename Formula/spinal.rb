class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_arm64.tar.gz"
      sha256 "515c23184dfe38c059dadd12ca55bfb946ecca417ffdd4a521af35aff11d3497"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_amd64.tar.gz"
      sha256 "88e83c08b85441d3a124bbff9a136f3d063d0cffac7efa09707bf50d62b135ba"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_arm64.tar.gz"
      sha256 "5118ec5ef51cbcd2b0e5eecb47842866d6c6980fc3d434784a6329a2f85e70ad"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_amd64.tar.gz"
      sha256 "b08ae1294c3d906ebb99056f45f7e0f23f78333d0cc13f68f990d2525c5f6c2e"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
