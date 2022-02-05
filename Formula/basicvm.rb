class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
  version "1.0.1"

  if Hardware::CPU.intel?
    sha256 "c5ad171de3f83f618a081fd2663d0c128758118c0fe438513fa345857daedaa7"
  else
    sha256 "8b9d66b7f58c5a5d21eefe0ff1044b3608cd26861ab09dcb885b4fa64256d400"
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
