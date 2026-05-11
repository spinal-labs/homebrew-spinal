class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_arm64.tar.gz"
      sha256 "c440faacf7e0e853a2316d440921a86b94c5d0ee76ec6d1e623f484c8931147c"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_amd64.tar.gz"
      sha256 "1ea43a8ddabf54572525497a420b9e6238deeba18f109b8a1bece4663041f316"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_arm64.tar.gz"
      sha256 "9cde2d0ba68dbc8a4dd89ad7f709c8859f152cf715b7779872e2c5e3b0d73fb7"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_amd64.tar.gz"
      sha256 "a53baa6ffc63c378316bfa1ca1ec034335dbd12025544f00d90b0adc91602794"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
