class Cdecl < Formula
  desc "Translate any C declaration to plain English"
  url "https://github.com/tessarin/cdecl/archive/v1.0.tar.gz"
  sha256 "c9c18554ce6562bd1889c627a8bb709a95e2b9538281457abd85058ea337c2d0"
  head "https://github.com/tessarin/cdecl.git"

  def install
    system "make"
    bin.install "cdecl"
    man1.install "cdecl.1"
  end

  test do
    system "#{bin}/cdecl"
  end
end
