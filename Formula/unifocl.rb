class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.23.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.23.0/unifocl-2.23.0-macos-arm64.tar.gz"
  sha256 "befe4f2127829efbd8580498833637efb685eebe274e8923b2d2fbaa8abd42c8"
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
