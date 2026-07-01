class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_arm64.tar.gz"
      sha256 "f1b34d79e739a887baa329f7a32adf18bcfd442d46220261def9ce97eb81f3ec"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_amd64.tar.gz"
      sha256 "a39a9143f89d4f3036e06f64b23d33261218333142cbc0239f9b286c391e359b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_arm64.tar.gz"
      sha256 "52527af1338739dabc273d0826464cc06732ec6283c8ee8be64ba3108238be52"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_amd64.tar.gz"
      sha256 "de0168efa62723bb7fea3d016ea213470b266a7c190032874b5730e395e49e3e"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
