class Basicvm < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  desc "Basicvm: creating a VM has started to get unwieldy... let's start back at the \"basics\" 🛠"
  homepage "https://basicvm.com"
  url "https://github.com/ottomatica/homebrew-ottomatica/releases/download/basicvm/basicvm-darwin-#{arch}.tar.gz"
  version "1.0.0"

  if Hardware::CPU.intel?
    sha256 "914f89386e31d66471c25e239b2e94482199999b48e8c279304036ba5529c8db"
  else
    sha256 "dba23f2a0734f7f10dcb5642fd2566e889abfb5f272b79146e9df3825e535b71"
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
