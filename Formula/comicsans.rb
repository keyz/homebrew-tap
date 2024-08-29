class Comicsans < Formula
  desc "cs (comic sans) for :pink-slack-emoji:"
  homepage "https://github.com/keyz/comicsans"
  url "https://github.com/keyz/comicsans/releases/download/0.3.0/macOS-universal.tar.gz"
  sha256 "e6c778a57edeb0917594e7a78c986687a108ffc444f540a08de41803c815be48"
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
