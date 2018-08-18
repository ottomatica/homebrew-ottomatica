class Baker < Formula
  desc "🍞 Quick and easy baking of computing environments."
  homepage "https://docs.getbaker.io/"
  url "https://github.com/ottomatica/baker-release/releases/download/latest-dev/baker-macos-latest.tar.gz"
  version "0.6.4"
  sha256 "dd592e6f95c62fd1c4e6aea0a2c5a244397dca16b2485ecbc34562f6e58b5560"

  devel do
    url "https://github.com/ottomatica/baker-release/releases/download/latest-dev/baker-macos-latest.tar.gz"
    version "0.6.4"
    sha256 "dd592e6f95c62fd1c4e6aea0a2c5a244397dca16b2485ecbc34562f6e58b5560"
  end

  # depends_on "cmake" => :build
  # depends_on "Caskroom/cask/virtualbox"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    # system "pwd >> /tmp/baker.install; ls -l  >> /tmp/baker.install"
    bin.install "baker"
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test BakerRelease`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
