class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_darwin_arm64.tar.gz"
      sha256 "b7c037bd4d6ec7a4d2a028daea21ab8027317bd6fce447eaca787bbf3bb000e7"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_darwin_amd64.tar.gz"
      sha256 "5b6636ab2f0c1728c8fedebd905452955a8ac35acca727de97c1b66a64c1ac37"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_linux_arm64.tar.gz"
      sha256 "30e1f494c9aeb257b62033e2b42f0d8a3d22a528076b5dfbe41588b34ef2796f"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.7/spinal_0.1.7_linux_amd64.tar.gz"
      sha256 "4ba1440245048e45afe166cbe8544e2db70671ec080d9b7b7c8f81d58bb974ca"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
