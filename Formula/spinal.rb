class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_arm64.tar.gz"
      sha256 "6f184ff3169b53c702e08fb717875595d639718dea437ca413552e1305432a48"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_amd64.tar.gz"
      sha256 "20f858a357bb2c0a183e5ee6a9a472831e8a2ae2178eee1b3d3ba8b52dd16181"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_arm64.tar.gz"
      sha256 "e6fec347c87d76b29803bc53ca7f7d05b2eff6354759f1fb22ee178514e2c047"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_amd64.tar.gz"
      sha256 "98d81f3b9b22f7b40fa59cfdef6fc79996d7b39d83337a901b3c71c2eeff6cea"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
