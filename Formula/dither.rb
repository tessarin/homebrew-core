class Dither < Formula
  desc "Image utility for color quantization and dithering."
  url "https://github.com/tessarin/dither/archive/v0.2.tar.gz"
  sha256 "0e233ec7acd52d265596aef69b191c8a10d28e90a5787522093e668c6a6eff75"
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
