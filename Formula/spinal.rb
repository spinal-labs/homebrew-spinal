class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_arm64.tar.gz"
      sha256 "346539e32a253e3e2da53cc13b18c50c3d00b3831b0c30515d288f21092ed4b7"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_amd64.tar.gz"
      sha256 "f54e0b215c6103dc0c0256cdc643aa18b568a3be267a90b71b03529672939220"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_arm64.tar.gz"
      sha256 "6598387c9234512cd807a2079bf8e282b696836acbd104b3a5a325ba7ce28a24"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_amd64.tar.gz"
      sha256 "2dc94df57cf1cf3211aafbfb94494912a567dad3b5414cbff85e4c9e2f2f3377"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
