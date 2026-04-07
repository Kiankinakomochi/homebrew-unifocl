class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.11.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.11.0/unifocl-3.11.0-macos-arm64.tar.gz"
  sha256 "9dfc3c828c359c9b12f60b5a6ef9a226a92da16912dca3b9d73052c8686035e2"
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
