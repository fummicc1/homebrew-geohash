class Geohash < Formula
  desc "GeoHash implementation in Swift"
  homepage "https://github.com/fummicc1/GeoHashSwift"
  url "https://github.com/fummicc1/GeoHashSwift/archive/refs/tags/0.0.2.tar.gz"
  sha256 "f78d827c829b8675aa0d036e2e4e452660a5714423baf325657d700ab1e1bb12"
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
