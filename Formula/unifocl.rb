class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.7.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.7.1/unifocl-2.7.1-macos-arm64.tar.gz"
  sha256 "e05b207d7ba52d576f9fd63f5ec7da04233df6bf21d763f1ca049c11db021390"
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
