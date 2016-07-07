class Sdpb < Formula
  homepage "https://github.com/yujitach/sdpb"
  url "https://github.com/yujitach/sdpb/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "57e5fc1656af4d0a47a504821bbb5bbfc41fe23564d5c246cce6fb21cef03a53"

  depends_on "gmp"
  depends_on "boost"
  depends_on "clang-omp"

  def install
    ENV['CLANG']="1"
    ENV['CPATH']="/usr/local/include/libiomp"
    system "make"
    bin.install "sdpb" 
  end
end
