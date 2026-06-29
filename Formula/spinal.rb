class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_darwin_arm64.tar.gz"
      sha256 "e50e6555b0aa10c5047976564d26ebc7ecf1563c6c3b32fed8d15802c7e21f52"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_darwin_amd64.tar.gz"
      sha256 "ac85c39ec5a1cbf53d60964e67e0bd2dfe6eef4d8e5930161950b98b0868beff"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_linux_arm64.tar.gz"
      sha256 "86392e53ce7cafacab3e7c89406afb5e53c94cfef6fbf41219d10c845e2785a4"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.12/spinal_0.1.12_linux_amd64.tar.gz"
      sha256 "83fdda51457316b8684456d3e2ea9d85a9b0a8f8a4d9bfa10bb7f0f8c3298b4d"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
