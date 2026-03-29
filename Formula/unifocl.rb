class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.21.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.21.1/unifocl-2.21.1-macos-arm64.tar.gz"
  sha256 "1fff41c76193cabc2e711874e846a4399bd9ef37849b6fe2cf2ee5cee8617306"
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
