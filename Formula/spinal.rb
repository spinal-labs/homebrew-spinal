class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_arm64.tar.gz"
      sha256 "e21ff0549f9a8f4ebca7e0117c76345cadd6a95ddc19662f49c28eda3b50227d"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_amd64.tar.gz"
      sha256 "2e6787c3a3b59371a646af09b07491aa425e72d9c35b33541c89ac9417f99a99"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_arm64.tar.gz"
      sha256 "cb7fe22f1dc4225593eee686626044c94c6bc8a73f179b256836c78dc58adff2"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_amd64.tar.gz"
      sha256 "9ab64e2a840a826e5b499f98a32c40b521bc8b1312c8ff75fa47eba8cc6fbb38"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
