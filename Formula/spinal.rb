class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_darwin_arm64.tar.gz"
      sha256 "eeeeafe4767ee0e1d1faba36eb5ec3910d7ae7a2428c98dcab3719917b5160f4"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_darwin_amd64.tar.gz"
      sha256 "57fb50b27f578cd6a5a00f1bc338789e66e1934ca02244dad25415a081318dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_linux_arm64.tar.gz"
      sha256 "699d428561b7f4fad03651f1995a546e6038e3c83c3bc057b645f12a33cafdf7"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.8/spinal_0.1.8_linux_amd64.tar.gz"
      sha256 "2c4b867aae5023dd724d48f618344c611292100ff959363841b9a75980ea58b6"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
