class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_darwin_arm64.tar.gz"
      sha256 "312bd6078d1f85d0186e5113bc6d07d462edc09e0b63f6baf82af2418ee248dd"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_darwin_amd64.tar.gz"
      sha256 "98a28f92670603e8732b2563888b98150c3f4ccffcc97e495f5b4ce71de31fcf"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_linux_arm64.tar.gz"
      sha256 "ca989ce4ce7eb8c59fc77998a074e8d3acd409cd28ddfa36ac2e472012cb3abc"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_linux_amd64.tar.gz"
      sha256 "7c879bd6881055db9a282dc7343e9d5607e580f7830a69cb263b8fa349dbb9cf"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
