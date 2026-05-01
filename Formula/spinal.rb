class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_arm64.tar.gz"
      sha256 "368bb32fe2ccbb0849a12c057795926c6b79cac4310ed0cc617ef45f0872b7c4"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_darwin_amd64.tar.gz"
      sha256 "b59a9d5d15df47b65d9e8aa66ef4f7d88d82498b519b95a9a9aa50f3278d297c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_arm64.tar.gz"
      sha256 "03788ef57fe26b368d746b2f4465d174d6e7bd9018a6f24bfd70f425495f1a88"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.1/spinal_0.1.1_linux_amd64.tar.gz"
      sha256 "79cc8f2804f113741b148029a3be46d77836ad987f2ca51c45019114e90fd2bb"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
