class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "1.5.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v1.5.0/unifocl-1.5.0-macos-arm64.tar.gz"
  sha256 "375ae3b4d7157f11f765a0b26d4de180ead95095674c780098dce92fe53e19d1"
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
