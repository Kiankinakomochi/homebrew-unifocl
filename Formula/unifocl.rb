class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "1.3.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v1.3.0/unifocl-1.3.0-macos-arm64.tar.gz"
  sha256 "b5274e934a49392427bc59974a204db75bc00a1daf356a9ae522296abc64d757"
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
