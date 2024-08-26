class Comicsans < Formula
  desc "cs (comic sans) for :pink-slack-emoji:"
  homepage "https://github.com/keyz/comicsans"
  url "https://github.com/keyz/comicsans/releases/download/0.2.0/macOS-universal.tar.gz"
  sha256 "cd4a27b94bcc9fba586e907eff89011669ebd96e7ba5dca4d5b6308eb8d3abfc"
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
