class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_arm64.tar.gz"
      sha256 "ec5abc039e2c92b1ec115759cf1f94d4aebfb45553f70d9e86f76e9eb83b460e"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_amd64.tar.gz"
      sha256 "f130719e990c4466cde358c68729b987c5bc27e4cea1f9d9107c106a44394a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_arm64.tar.gz"
      sha256 "141c58466899388edd946e9e850065c75b6f66954dbe445591a1fb04a4a43195"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_amd64.tar.gz"
      sha256 "f0fa7153d85d42a2223a366f77a3e77481b15ab786f8dc46f5c17e483964f882"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
