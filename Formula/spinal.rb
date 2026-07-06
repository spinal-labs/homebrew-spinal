class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_arm64.tar.gz"
      sha256 "8eec2e2420e71b717b8598e63659b0c53ee591665e23727b89d1e4671107c0ae"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_amd64.tar.gz"
      sha256 "d60e7993fd5bf0fa86e368e433fe4ac907ab0ec06de0e6c2581911e443c5dbd6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_arm64.tar.gz"
      sha256 "26aef145584b81a0b8a5263064d4ea6728e09520cfb1be3373645f637b09e6d6"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_amd64.tar.gz"
      sha256 "ddb793803505aa5af2cf0554ce339acd5e75abf022af6ac7dc9b72878e0e4256"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
