class Vyom < Formula
  desc "Terminal music player for MPD with DSP EQ, synced lyrics, and Cava visualizer"
  homepage "https://github.com/MrSyr3x/Vyom"
<<<<<<< HEAD
  url "https://github.com/MrSyr3x/termony/archive/refs/tags/v1.0.248.tar.gz"
=======
  url "https://github.com/MrSyr3x/Vyom/archive/refs/tags/v1.0.248.tar.gz"
>>>>>>> 3a36459 (Update vyom to v1.0.248)
  sha256 "47471350726e90d9605259b6e2b98a0abaf6edcc4586e92bf5d8092a7d4bc754"
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
