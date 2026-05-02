class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_arm64.tar.gz"
      sha256 "d203af47c317dadbe16ff61c4d658a302a77ca87090e7b29d05814a62abec168"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_amd64.tar.gz"
      sha256 "99853572701113d4bfe8cbef27e07d2c7f23d8de5ed68a8f672e0b72fdfc7ed7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_arm64.tar.gz"
      sha256 "8dd7437fd7a2e9fb3351b4a9272c9f57aac0c7c87e4f799959ecec13298b8019"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_amd64.tar.gz"
      sha256 "5fa5be6c22e4571beb04abadcd5e9600cc2e24c09b2d7f632c3a35735f21fbb0"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
