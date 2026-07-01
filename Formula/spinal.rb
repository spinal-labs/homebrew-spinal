class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_darwin_arm64.tar.gz"
      sha256 "3c42bea64e5e66822b207b8e9300e572c414e76486252b4e5d2af3cf7ca58716"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_darwin_amd64.tar.gz"
      sha256 "b7a0265e00594960a2101fe6469ef76aa9d43fd2f032fa6f0631a032c3ff8500"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_linux_arm64.tar.gz"
      sha256 "83c73683ac62e401504e5a368aefaf061340f8273a6cfe0892388bba648425df"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.14/spinal_0.1.14_linux_amd64.tar.gz"
      sha256 "d485bc3171ead0b6659394d8fe5bec2bd918f5a415b179951e388051398b2102"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
