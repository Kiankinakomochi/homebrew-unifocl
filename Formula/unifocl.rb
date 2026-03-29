class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.20.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.20.0/unifocl-2.20.0-macos-arm64.tar.gz"
  sha256 "c25eb27720d55bb273170fb61919302970f34121b21ffc6d47615a33ff82c18b"
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
