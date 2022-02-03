class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
  version "1.0.1"

  if Hardware::CPU.intel?
    sha256 "0e9df4c427fd7e85f622d3c9657736f0aa712482872d5d5608a055ec8e194782"
  else
    sha256 "4ca4d16e5f2b373ede0019baa3b1fc9dc05132ec1618a9ccf8253c9dc4e3e43f"
  end

  # devel do
  #   url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm.tar.gz"
  #   version "1.0.0"
  #   sha256 "f206be0a7710ac8b9d582506bbc80de7de4e960d6777cf8b528518a3ba06619b"
  # end

  def install
    bin.install "vm"
  end

  # cask:
  # zap trash: [
  #     "~/.basicvm",
  #     "~/Library/Application Support/basicvm"
  # ]
end
