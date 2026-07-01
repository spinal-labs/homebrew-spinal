class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_arm64.tar.gz"
      sha256 "d1bc09f42b0cef6ebc6d44a013afcf86c96e29680a2fe08c235eb7f90aa05d53"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_amd64.tar.gz"
      sha256 "d47d722d5166b100991115d40ec2e13f8072af883aee92a73ad72b10b956e059"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_arm64.tar.gz"
      sha256 "5fe8e984b2b4b86571043df5719b5df977070b206743ca5a3189b3e79de2efd3"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_amd64.tar.gz"
      sha256 "b1009f7662cb6bf7d7605484353b5a0c8d1579d95b97ec331503b94704994106"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
