class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.18.2"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.18.2/unifocl-3.18.2-macos-arm64.tar.gz"
  sha256 "b444eddaa8b064f15daf69c692466283f0541117fadc885bd9dedf12f59c22e6"
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
