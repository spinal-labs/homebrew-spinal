class Spinal < Formula
  desc "Capture local development context for Spinal PR reviews"
  homepage "https://getspinal.com"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_arm64.tar.gz"
      sha256 "02d39b13af5418e0dd490372dc8dea1431901c35a212a55e45530b2d5597c19d"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_darwin_amd64.tar.gz"
      sha256 "8e6f99faca6df44fb772534e5312af65981a10f141739ba7991753fd097fafc9"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_arm64.tar.gz"
      sha256 "c7e981e1ad129129231a76d6722a04611f70cc0b949ff6e849aa3df1324c0e60"
    end

    on_intel do
      url "https://downloads.getspinal.com/cli/0.1.5/spinal_0.1.5_linux_amd64.tar.gz"
      sha256 "ef771ea35cac0d0227643e5f6911aa4e96fa61ea8bb2043d2cbd8534f35ed7ee"
    end
  end

  def install
    bin.install Dir["spinal*/spinal"].first || "spinal"
  end

  test do
    assert_match "usage: spinal", shell_output("#{bin}/spinal help")
  end
end
