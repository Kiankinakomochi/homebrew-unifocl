class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.17.3"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.17.3/unifocl-3.17.3-macos-arm64.tar.gz"
  sha256 "e46824fd03ced14c6f06e5822489a94732e3472f94596272addc6c58d7efec39"
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
