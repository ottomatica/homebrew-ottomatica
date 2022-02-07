class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
  version "1.0.1"

  if Hardware::CPU.intel?
    sha256 "01f25734261253b0def8323445b87f0f5df39358b7e800815a5a376eddd4e89c"
  else
    sha256 "da28d5807b874273d558e4708dac8c8df8d887ed95c72fe6523b615576af3a6c"
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
