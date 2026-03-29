class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.13.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.13.0/unifocl-2.13.0-macos-arm64.tar.gz"
  sha256 "e31426b56da5a9de00b9c7b79ee80e7615fef5e2b97da59d899bbd3c83171cc6"
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
