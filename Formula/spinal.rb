class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_darwin_arm64.tar.gz"
      sha256 "1383b71a31a14a516824465217a20d73cef769d5892460298f126898b35cb411"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_darwin_amd64.tar.gz"
      sha256 "8027b7d243a7aee6d31fd461c734747f8a45d9f38183afe8b71ad13197f9b7be"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_linux_arm64.tar.gz"
      sha256 "a7b2beb41b2085dd384fbc1719068ad456257a2881506747e46c786514fa63da"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.15/spinal_0.1.15_linux_amd64.tar.gz"
      sha256 "aa96686629de2cd80f010415723b9b6c3804a0a9eba849b6f7c54acf263a024c"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
