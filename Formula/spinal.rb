class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_arm64.tar.gz"
      sha256 "bdfa307c45df34564d268ba3b8f1229f53699fa47e94fcc9d62102a2b3b16d9f"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_amd64.tar.gz"
      sha256 "d526e68dd596678d3d91f45f6ab3e17206509b4aac2c6a14fd5337576780b55c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_arm64.tar.gz"
      sha256 "ed085a109b40818869a0a9dfcfe1bcb1fcfaec87fbbe62d513109de307cd4f01"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_amd64.tar.gz"
      sha256 "786f1a0be3fab306a31caa9ac6eea0407292f10013f9f099202f602b1d9cf77d"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
