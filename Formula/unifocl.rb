class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.0/unifocl-3.8.0-macos-arm64.tar.gz"
  sha256 "7a292d994a5dc88f3b69c115ca772bcae3edea61ce363d31cbaaf7ec73309bb4"
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
