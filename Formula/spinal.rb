class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_darwin_arm64.tar.gz"
      sha256 "cfdbdc0072bdaf99a26df77c713281af8b514ddb88642fcc761aabb7ca201059"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_darwin_amd64.tar.gz"
      sha256 "442f7e15c8a2de8c8ebc6d66fca67fdd8929e3cfa62b3c3b16259cf29c6c394d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_linux_arm64.tar.gz"
      sha256 "12bd71fe4ec7334b3531aec530e0364fca5f0dbbb36ef443259b90cc55d549ba"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.13/spinal_0.1.13_linux_amd64.tar.gz"
      sha256 "9c8a39bebe73392a92884c468cc40249cebeb6183cc5219d0b6623641b229d05"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
