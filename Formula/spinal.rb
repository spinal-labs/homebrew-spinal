class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_arm64.tar.gz"
      sha256 "fb55cdcd3c3476c2e211696e32b2bdfad993fdd6ad34eb721dfe305355f2d109"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_darwin_amd64.tar.gz"
      sha256 "0da1ea61cdd05c4564860266f92efca144483faf9b8707e520fa72871df56c1e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_arm64.tar.gz"
      sha256 "52b52bdb99ab9274c2571465410a76aa6dc2aef38e79e70337bafeae3ad56cd8"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.3/spinal_0.1.3_linux_amd64.tar.gz"
      sha256 "6e51927a74afb96acba01b9fb837435f015315175c86d63145ccf6fb42427852"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
