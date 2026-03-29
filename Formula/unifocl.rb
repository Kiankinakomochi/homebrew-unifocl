class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.21.2"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.21.2/unifocl-2.21.2-macos-arm64.tar.gz"
  sha256 "7726574b15b1ac016eceb4fae49420320f4551bc8699d33f5991b34e95602bb3"
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
