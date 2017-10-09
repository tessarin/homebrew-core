class Dither < Formula
  desc "Image utility for color quantization and dithering."
  url "https://github.com/tessarin/dither/archive/v0.2.1.tar.gz"
  sha256 "daf7c7fbc3ed64012c4838d4ceb577085da7c9c5b0dc957849ebce05fd40a5e5"
  head "https://github.com/tessarin/dither.git"

  depends_on "libpng"

  def install
    system "make"
    bin.install "dither"
    man1.install "dither.1"
  end

  test do
    system "#{bin}/dither"
  end
end
