class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_darwin_arm64.tar.gz"
      sha256 "07ff5374d18960affe171de6382531415eadd6b16558a205843073684c75ecab"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_darwin_amd64.tar.gz"
      sha256 "93be4320f891c6d186c55fc7a4e24405d9af3fc54f665d5e9f23bdda1718f377"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_linux_arm64.tar.gz"
      sha256 "4bd1de7032bdbf36f5f7b7a8678ac20a4d6a8dbe4b3d0921ca5f62ea066d5813"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_linux_amd64.tar.gz"
      sha256 "4e83a94b3996f9a7f1822808dbf1b164c1562b73e7c1dcc6e0dee11d459ab9c3"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
