class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_arm64.tar.gz"
      sha256 "1144c8a5a3a0f2e39c4f76ddb738194d392c78427484caa2e1dfdc867779677a"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_amd64.tar.gz"
      sha256 "e479f10e74bd204d0f691e0ebb9ca5ef5c23685cb37ddeb5b9e8444800b5f8f1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_arm64.tar.gz"
      sha256 "02b4cbf2731042a36e20e88604df3ad8821b8ea37e9f5fc82b7842c295054529"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_amd64.tar.gz"
      sha256 "94782aed17d28ea7896c01b9c446109206e1eaec208fe1fc9b5b90b3dee55159"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
