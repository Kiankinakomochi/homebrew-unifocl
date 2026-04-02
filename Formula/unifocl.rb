class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.21.4"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.21.4/unifocl-2.21.4-macos-arm64.tar.gz"
  sha256 "ec8b82513a86c96a3c80b3bccbbcd3cc5cc97e31e55bf01ebe243f24f1049a8c"
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
