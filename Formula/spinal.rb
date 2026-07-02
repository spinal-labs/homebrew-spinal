class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_arm64.tar.gz"
      sha256 "123f20397188a3d82d51453743c9ced9ada01a1fdf0d3db0be8aa4c02390f68d"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_darwin_amd64.tar.gz"
      sha256 "c8830993374ac729b1ff7833cfc24c9107b5914f90f5917bccc83c2fab2c9622"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_arm64.tar.gz"
      sha256 "6f22436e886c35446dfb0f8e13f03dd9c8c45d2db710cc8b819b0215156d7ea4"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.2/spinal_0.1.2_linux_amd64.tar.gz"
      sha256 "1954ace4dae628c0b78fce75d067ca1bcd3cff42b372dad7422ecd0f7719f7b4"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
