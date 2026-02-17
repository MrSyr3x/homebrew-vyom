class Vyom < Formula
  desc "Terminal music player for MPD with DSP EQ, synced lyrics, and Cava visualizer"
  homepage "https://github.com/MrSyr3x/Vyom"
  url "https://github.com/MrSyr3x/Vyom/archive/refs/tags/v1.0.245.tar.gz"
  sha256 "5d98c009ffa659dd3636baed27956a1bd4a008d63fa5d1f21cc1179f6e940ce0"
  license "MIT"

  depends_on "rust" => :build

  # Runtime dependencies
  depends_on "mpd"                         # Required for MPD mode
  depends_on "switchaudio-osx" => :recommended  # Optional: device switching (macOS)

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyom --version")
  end
end
