class Comicsans < Formula
  desc "cs (comic sans) for :pink-slack-emoji:"
  homepage "https://github.com/keyz/comicsans"
  url "https://github.com/keyz/comicsans/archive/refs/tags/0.1.0.tar.gz"
  sha256 "26c67ba85da5c80b5a1d473dd87d0e2d782c4d81e94b476d927ceefa917c8876"
  license "MIT"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"

    bin.install ".build/release/cs"
  end
end
