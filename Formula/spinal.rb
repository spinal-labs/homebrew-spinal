class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_arm64.tar.gz"
      sha256 "15eccce95f770e1fa38543c8d38d56fe52558881a728079c95b742a239c7542b"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_amd64.tar.gz"
      sha256 "cc89f75ea256dc7b3afedd1aa813766f2a254160808cf7473b530913b1c6d48e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_arm64.tar.gz"
      sha256 "26381465e537abcaa8be619a1db30f6dbe8b1e3d0d0eec8b08d2b4504537f3e3"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_amd64.tar.gz"
      sha256 "e32b564756f84f9725ee4299420bf4c41248e652614ff0b75efa1e7842d6886b"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
