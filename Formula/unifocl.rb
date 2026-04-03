class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.0.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.0.1/unifocl-3.0.1-macos-arm64.tar.gz"
  sha256 "04d8d80d4bd880c791de94b2808062eec0be53b47268e782c709974ae03140cd"
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
