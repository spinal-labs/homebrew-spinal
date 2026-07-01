class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_arm64.tar.gz"
      sha256 "b82563ef3086e7c0abc6008951f5c191ec2f3582adb6a2dc4842f6008ad59c92"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_amd64.tar.gz"
      sha256 "2a7e8ee502bf7cfb6926877c61a0f25fc4434751645be5830f10b93eff52c4bb"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_arm64.tar.gz"
      sha256 "be7cf491229c9eb83740f68395e4d48cc571a716b88d1cddd3d0eb0a81d07a1f"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_amd64.tar.gz"
      sha256 "a23f0fe440739cea726e245832b498c4bb7799509ed0784d7d0453191053a626"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
