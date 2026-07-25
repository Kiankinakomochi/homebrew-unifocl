class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.17.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.17.0/unifocl-3.17.0-macos-arm64.tar.gz"
  sha256 "0e726414072a934748465d29ad34dc5e4d11e28d7bcbc7aa1650db8bc7b7a106"
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
