class Comicsans < Formula
  desc "cs (comic sans) for :pink-slack-emoji:"
  homepage "https://github.com/keyz/comicsans"
  url "https://github.com/keyz/comicsans/releases/download/0.4.0/macOS-universal.tar.gz"
  sha256 "eb5a10e65a744efaece6cca6a5f902c04e81fe9a461ba6b8c42f7019fcb5b4dd"
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
