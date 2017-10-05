class Dither < Formula
  desc "Image utility for color quantization and dithering."
  url "https://github.com/tessarin/dither/archive/v0.2.tar.gz"
  sha256 "b33a3fc6b9bccb17137301bdb9c2a508544ae283127dabbc6ee9a810e4f1bbb7"
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
