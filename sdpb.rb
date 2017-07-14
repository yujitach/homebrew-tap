class Sdpb < Formula
  homepage "https://github.com/yujitach/sdpb"
  url "https://github.com/yujitach/sdpb/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "1d3e8c9106b7ad81f5a013445537bec8e31c8e9921525899e76bf80b5841687d"

  depends_on "gmp"
  depends_on "boost"
  depends_on "llvm"

  def install
    ENV['CLANG']="1"
    system "make"
    bin.install "sdpb" 
  end
end
