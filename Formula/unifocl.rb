class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.21.3"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.21.3/unifocl-2.21.3-macos-arm64.tar.gz"
  sha256 "779033231b04d2809caed7b57bf337d75dbf8f6823c74b5cae6d41ed1e157dee"
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
