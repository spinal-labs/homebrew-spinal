class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_arm64.tar.gz"
      sha256 "ef749438fbd88db3208c7ba2d9f62655fded0b796d7ac9c1609621b6bc793b38"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_amd64.tar.gz"
      sha256 "587cab626e84d1a5e0c95adcb672c0209e2273ff6622d029b1357efeef2ecf24"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_arm64.tar.gz"
      sha256 "e70093794c3a9aef6521fd9c3324102ce5584d039d0b2e3522077ce752c148df"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_amd64.tar.gz"
      sha256 "8f399c7634fedeeea1702723eb1518cf64052d39593d86d8ff406261e0bd12ec"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
