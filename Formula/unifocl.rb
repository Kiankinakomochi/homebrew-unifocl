class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.0.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.0.0/unifocl-3.0.0-macos-arm64.tar.gz"
  sha256 "6e88956fe18bc9b251d0442deedef54f1676d02bd654b6d6f798e866d2cf04c9"
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
