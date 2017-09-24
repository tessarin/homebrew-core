class Dither < Formula
  desc "Image utility for color quantization and dithering."
  url "https://github.com/tessarin/dither/archive/v0.1.1.tar.gz"
  sha256 "a7e31d1c66c5bf9f7f0c56cf43af6257572774e603e0489112392cc1837afd1b"
  head "https://github.com/tessarin/dither.git"

  def install
    system "make"
    bin.install "dither"
    man1.install "dither.1"
  end

  test do
    system "#{bin}/dither"
  end
end
