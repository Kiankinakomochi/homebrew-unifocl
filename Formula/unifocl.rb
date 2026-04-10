class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.14.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.14.1/unifocl-3.14.1-macos-arm64.tar.gz"
  sha256 "ac4a36c7b53bc6268fe0a81869273d6ece6bf333a4a60008fd2887efad9595b1"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"unifocl"
  end

  test do
    output = shell_output("#{bin}/unifocl exec \"/version\" --agentic --format json")
    assert_match '"status":"success"', output
  end
end
