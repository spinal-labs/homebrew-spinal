class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_darwin_arm64.tar.gz"
      sha256 "6006b53f8e31c42d86eb2ba995eb8f0eed76ee1328aae44d3f633ad207d3ec73"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_darwin_amd64.tar.gz"
      sha256 "d08a3bf7e1c352bebaa965771e8389c2f25bbf18b3edec9547619b431034ffa2"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_linux_arm64.tar.gz"
      sha256 "446a73b13c57987f7492a8c72f1f840029d35f0832d4cfb027f853c7ee5c9a53"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.9/spinal_0.1.9_linux_amd64.tar.gz"
      sha256 "49aef7fc82eb78d92bce93572433679fa85822dc9d3fd869ca1ec50714e67f59"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
