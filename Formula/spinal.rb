class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_darwin_arm64.tar.gz"
      sha256 "027f4b93abfc9f9407deeebfcaf53b6211041c965b5e7ad49a690c5cb38f2e1b"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_darwin_amd64.tar.gz"
      sha256 "44cd42741a2e44f306d0b063e5c3705d488649f7b17b58576651fb7b0b7dc99e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_linux_arm64.tar.gz"
      sha256 "10d0b868ec1a314660934222aa5d63f35f7017dd584b7be050b544decbd14181"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.11/spinal_0.1.11_linux_amd64.tar.gz"
      sha256 "87d59945403057f4164a431519f7dcbec377e0da9cbc53badbe39769b4526ca2"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
