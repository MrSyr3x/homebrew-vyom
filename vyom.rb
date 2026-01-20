class Vyom < Formula
  desc "Terminal music player for MPD with DSP EQ, synced lyrics, and Cava visualizer"
  homepage "https://github.com/MrSyr3x/Vyom"
  url "https://github.com/MrSyr3x/Vyom/archive/refs/tags/v1.0.174.tar.gz"
  sha256 "e7401dff2804ac50c2cf362c798ac674221fabcb6ac4ffccdc96b59b37a32db0"
  license "MIT"

  depends_on "rust" => :build

  # Runtime dependencies
  depends_on "mpd"                         # Required for MPD mode
  depends_on "cava" => :recommended        # Optional: for visualizer
  depends_on "switchaudio-osx" => :recommended  # Optional: device switching (macOS)

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyom --version")
  end
end
