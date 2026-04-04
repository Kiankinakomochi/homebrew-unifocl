class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.6.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.6.0/unifocl-3.6.0-macos-arm64.tar.gz"
  sha256 "22a4c774b0f0a7db6a6afebb39e12822a824739b51efa11fd13d699d50c61fa7"
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
