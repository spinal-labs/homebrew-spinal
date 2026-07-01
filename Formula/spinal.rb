class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_darwin_arm64.tar.gz"
      sha256 "d29728b14e81364a9a9ea152e9cf6fab78942b1e63d85f681f7521e8a900a9da"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_darwin_amd64.tar.gz"
      sha256 "d822eb098676047d76d64ee077304273f447e79bf6428754d32beffb70568594"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_linux_arm64.tar.gz"
      sha256 "c8d83fd9adf246d83149cf2bd6db9a9a69a8aabe4e256844be4e44eda0e5f1d6"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_linux_amd64.tar.gz"
      sha256 "d423c0050930f4fdce39cea379ec1780c49099a3106888497f8b0e498db4cd97"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
