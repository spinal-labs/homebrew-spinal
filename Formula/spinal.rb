class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_darwin_arm64.tar.gz"
      sha256 "487acae3d5bfbbabb3ff8ab59281b9b5989ada95eee3d4372b7b21196c3e4f43"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_darwin_amd64.tar.gz"
      sha256 "112a5b2c8737c72e1d1f97509b71a704f6f937845f385f03adc7d6d5a81b6d84"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_linux_arm64.tar.gz"
      sha256 "dffb139fb30391aa7d69e820d6f110772b979872067bc3ef7b71f731bf1f3a21"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_linux_amd64.tar.gz"
      sha256 "1d79db5c29d9417da3b419107ec54045ca72b157181a2c5b7eef86446d25defe"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
