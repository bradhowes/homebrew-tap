class Openvsip < Formula
  desc "C++ Vector, Signal, and Image Processing Library (VSIPL)"
  homepage "https://github.com/bradhowes/openvsip"
  url "https://github.com/bradhowes/openvsip/archive/1.0.2.tar.gz"
  sha256 "dd2992be1bd8a247a326836ed53d99ede0fb3ce4d0062b37965a99a916c4a612"

  depends_on "fftw" => :recommended
  depends_on "open-mpi" => :recommended

  def install
    mkdir "objdir" do
      system "../configure", "--silent", "--with-lapack=apple", "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
