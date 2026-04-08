class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.13.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.13.0/unifocl-3.13.0-macos-arm64.tar.gz"
  sha256 "8ed7ae1377cac527f00e1b1cd173cb770f64db7018f8a5567dbe33b0da7813ce"
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
