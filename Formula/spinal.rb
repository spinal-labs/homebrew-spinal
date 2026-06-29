class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_darwin_arm64.tar.gz"
      sha256 "e7fecf0da6ecfaab931afbd5ae2dd1808401fafabefaa4144028718cd317d5f1"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_darwin_amd64.tar.gz"
      sha256 "276c99c31015b062d9a071241057c6809d216d1048bbc3d7c0446927fa5eec90"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_linux_arm64.tar.gz"
      sha256 "9b6b5b2ac6945a35e7004121ed18d8b84fd69d13af9d488aeeb27c7b02710fb4"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.10/spinal_0.1.10_linux_amd64.tar.gz"
      sha256 "ab71d1b9d152f3ba5778b280ca6a97743884449dbf0676ad535b05e89ed95fdb"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
