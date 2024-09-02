class Comicsans < Formula
  desc "cs (comic sans) for :pink-slack-emoji:"
  homepage "https://github.com/keyz/comicsans"
  url "https://github.com/keyz/comicsans/releases/download/0.5.0/macOS-universal.tar.gz"
  sha256 "455b64ff420a1f147cc4797a604813d6f5361b77a4709b2361e6c0dda7f4a32b"
  license "MIT"

  depends_on :macos # macOS only
  depends_on macos: :ventura # .macOS(.v13)

  def install
    bin.install "cs"
  end

  test do
    system bin/"cs", "hello"
    assert_predicate testpath/"hello.png", :exist?
  end
end
