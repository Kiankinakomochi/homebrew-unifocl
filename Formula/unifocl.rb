class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.10.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.10.0/unifocl-3.10.0-macos-arm64.tar.gz"
  sha256 "47e66b4a02c9ba6537211e45162e00fdfbb1168a5800f15f5f3b99b4dd9afae3"
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
