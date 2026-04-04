class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.3.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.3.0/unifocl-3.3.0-macos-arm64.tar.gz"
  sha256 "0c0ba477652e09670ea0b65dd453d00233c61a1dfe7793c640510e67db0547da"
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
