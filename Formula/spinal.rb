class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_darwin_arm64.tar.gz"
      sha256 "fea6915118920a8bd6b2af080fb90d1966519f7968f84f9e98eebf978186560f"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_darwin_amd64.tar.gz"
      sha256 "32d124ee880d3eaf26a26d3d6ec397f3fb931bd089586ea6a2491a9e895ee490"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_linux_arm64.tar.gz"
      sha256 "dcba12900380348b5ca74503ccbac1084965ae7da80e0e4f4a712c8f201f75e3"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_linux_amd64.tar.gz"
      sha256 "c297478ea091a54e0bfd2a4ab6be1c96c59508c66ecd098dec7a279ca3b13a43"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
