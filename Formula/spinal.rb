class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_arm64.tar.gz"
      sha256 "384dc810658d1aaa19524e18a1ccec543b3a711c81ae4e1e366f71af2558db25"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_darwin_amd64.tar.gz"
      sha256 "56858749a401588fd8cb02103ef837cc10cfd5a0046ca8afddb26393e0ae1214"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_arm64.tar.gz"
      sha256 "19b17717b9c6aac2d5e0342ea1af24bec7d19ea94dd03ecfb52d74a0f680c121"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.0/spinal_0.1.0_linux_amd64.tar.gz"
      sha256 "0a2a9dfe0e20e53d7e0c558466a3947adacf1ac417a494184175895977b93f76"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
