class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.0.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.0.0/unifocl-2.0.0-macos-arm64.tar.gz"
  sha256 "8b87edfc784f9300afc8452f4bf5522b4fb286f3ca310ed1e86e5de58fb1ae0b"
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
