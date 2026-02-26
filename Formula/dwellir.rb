class Dwellir < Formula
  desc "Dwellir CLI - Blockchain RPC infrastructure from your terminal"
  homepage "https://dwellir.com"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dwellir-public/cli/releases/download/v0.1.1/dwellir_darwin_arm64.tar.gz"
      sha256 "fdbca343fbc623afff68ce4a39aaac4e1f38cc9a22953b0e2b3c3bb693332175"
    else
      url "https://github.com/dwellir-public/cli/releases/download/v0.1.1/dwellir_darwin_amd64.tar.gz"
      sha256 "33c515ea76671329f1ff476e1f4696a08a9930bdb2c413a2dc8a3ae0f10a69a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dwellir-public/cli/releases/download/v0.1.1/dwellir_linux_arm64.tar.gz"
      sha256 "86b9872202a8e33e067ded18f2ce40819424273938a3ee79d5e6c4e254fa7362"
    else
      url "https://github.com/dwellir-public/cli/releases/download/v0.1.1/dwellir_linux_amd64.tar.gz"
      sha256 "14bc7a0e37f78c7b77e8b78dba4b8f44842ef693ddd263b6bf53604ca24c40cb"
    end
  end

  def install
    bin.install "dwellir"
  end

  test do
    system "#{bin}/dwellir", "version", "--json"
  end
end
