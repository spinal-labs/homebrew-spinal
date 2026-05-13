class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_darwin_arm64.tar.gz"
      sha256 "e495e9bef099c3e92e0ad3cbd0fd10db73607a90095569b3f13f17392dcecf99"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_darwin_amd64.tar.gz"
      sha256 "27766cc97ff3e104671f9d43d256215365f6d0af814a4b3cb23450a7e40d7f86"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_linux_arm64.tar.gz"
      sha256 "fcfdea6d0faf2f0bc3ed47918665ec9d5759f6eb567bbbd70d458a55967faf92"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_linux_amd64.tar.gz"
      sha256 "46603daefa782627cd63cd3b167d9bd368140a657ffe1868fb77fdab35368949"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
