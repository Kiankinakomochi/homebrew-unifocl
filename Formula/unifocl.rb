class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.2"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.2/unifocl-3.8.2-macos-arm64.tar.gz"
  sha256 "c58d7dce31b01a13437e9d8e3e4230c7735614dc9553a79d7f3ae039379b4ab5"
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
