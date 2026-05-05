class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_arm64.tar.gz"
      sha256 "87493b16246dabf264a80bc1fdba2bf4228dbeb0746d7eb360d485ff36361b2d"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_darwin_amd64.tar.gz"
      sha256 "ab7cb08d6bcc51a580dd738c73bc5dfcaef2bedfc7127d898984d6a95d1fb9e3"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_arm64.tar.gz"
      sha256 "e76c1db698cf5ad59a3da34c48cb564709f1bc78611d2d7148016c2d92c7a22d"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.4/spinal_0.1.4_linux_amd64.tar.gz"
      sha256 "85a77548cdbc578636799db4f976002cf61253f3af7dd55cce6164396775373c"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
