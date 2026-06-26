class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_arm64.tar.gz"
      sha256 "9150bd9b2672067308679feb84ea53a72bbeff37c211254783c2217e069968e0"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_darwin_amd64.tar.gz"
      sha256 "a96f749aa4c8acae60d52b87d0ebae8d3787cd610b508b342c34a02045b63927"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_arm64.tar.gz"
      sha256 "1c6c6531bf4758ce1478e8a723546a0857e2cb39a08c60b16f6090951cc6ed68"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.6/spinal_0.1.6_linux_amd64.tar.gz"
      sha256 "13b9443a69126415dfd9c0bd47fb2dc376d17920b8fb328924fb803098116226"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
