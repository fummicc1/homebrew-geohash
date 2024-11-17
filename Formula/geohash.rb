class Geohash < Formula
  desc "GeoHash implementation in Swift"
  homepage "https://github.com/fummicc1/GeoHashSwift"
  url "https://github.com/fummicc1/GeoHashSwift/archive/refs/tags/0.0.1.tar.gz"
  sha256 "6e97330eedd1154cfaa268daa3a07c236103e9b51f67f64d3ad69c002491342b"
  license "MIT"

  depends_on xcode: ["16.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/geohash"
  end

  test do
    system bin/"geohash", "35.681236", "139.767125"
  end
end
