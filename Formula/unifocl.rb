class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.3.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.3.1/unifocl-2.3.1-macos-arm64.tar.gz"
  sha256 "39053dc5868d9d4257efc3db0495a23d1a102567660039f1c8c1637f7e347daa"
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
