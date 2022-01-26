class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
  version "1.0.0"

  if Hardware::CPU.intel?
  sha256 "79e3ebabe077865e70479aee669543cd19b80b3f09dffb4138d6ee524de335d1"
  else
  sha256 "fbc8e5fe89d6620c1eb7461a90d12739e5f49f2391c03f1da6b7e98506a7ad5f"
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
