class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.22.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.22.0/unifocl-2.22.0-macos-arm64.tar.gz"
  sha256 "e22b9a673c08c1e5d405d380c9f4a8b36e2cf613b142e5a2d4f0f7ffbe18ad85"
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
