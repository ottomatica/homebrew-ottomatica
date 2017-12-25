class Baker < Formula
  desc "🍞 Quick and easy baking of computing environments."
  homepage "https://docs.getbaker.io/"
  url "https://github.com/ottomatica/BakerRelease/releases/download/0.1.0/baker-macos-0.0.1.tar.gz"
  sha256 "f8334f1773346d99068fa4afca2162b19322f978614b1e5aa51e81b169a1057c"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
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
