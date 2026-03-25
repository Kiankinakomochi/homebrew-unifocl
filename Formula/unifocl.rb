class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.5.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.5.0/unifocl-2.5.0-macos-arm64.tar.gz"
  sha256 "f4ae36474ac810bd312777938ecb4886c64dfbe41c328cc1b3461178ac88cb8a"
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
