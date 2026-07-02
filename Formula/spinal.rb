class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_arm64.tar.gz"
      sha256 "d598cfc5e2bc2f690ea3651884a8a7e2e817ac6d5b0f099977e0901d3cbe1816"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_amd64.tar.gz"
      sha256 "9d788257a36c5bcb441f36c850712aac7feaedeee8dee36e5cbc7305232c99ad"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_arm64.tar.gz"
      sha256 "55b279689bdff23e9e83105c45421b5d36d4d410c64f172337e1827485887e5f"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_amd64.tar.gz"
      sha256 "e2f382fe42fe553c418e14a4b387b3a530d4d39808b3da977f52f79d48e3e4a7"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
