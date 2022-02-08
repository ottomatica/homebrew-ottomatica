class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  macos_version =  MacOS.version
  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  version "1.0.1"

  depends_on :macos

  # devel do
  #   url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm.tar.gz"
  #   version "1.0.0"
  #   sha256 "f206be0a7710ac8b9d582506bbc80de7de4e960d6777cf8b528518a3ba06619b"
  # end

  if MacOS.version < :big_sur
    # macOS < 11:
    abort("Unsupported OS! To use basicvm please update your system to Big Sur (macOS 11) or newer.")
  elsif MacOS.version < :monterey
    # macOS 11:
    url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{macos_version}-#{arch}.tar.gz"
    if Hardware::CPU.intel?
      sha256 "6a5663f810f1d9d8c77d1827b2404fccc94364d876179a915cd253e512e4eb3a"
    else
      sha256 "f7930bc38a5b47a7c941ee6b42b1c1e7249a239087881f542b623923be24508a"
    end
  else
    # macOS 12+:
    url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
    if Hardware::CPU.intel?
      sha256 "143bd9b93a550ed945886ba32e6b573b42bd075c05ec94c73db547461f8d7c0d"
    else
      sha256 "f168c1909f5cbf37e201a3101e88139e6763fd03a49b440ba86551aa17fc80b3"
    end
  end

  def install
    bin.install "vm"
  end

end
