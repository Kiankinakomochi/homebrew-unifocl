class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.5"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.5/unifocl-3.8.5-macos-arm64.tar.gz"
  sha256 "8d127cef2eab58038b4e7a564219822cb6005a67e2569cf9594592ce2955cd4c"
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
