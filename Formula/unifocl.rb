class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.14.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.14.0/unifocl-2.14.0-macos-arm64.tar.gz"
  sha256 "514abd9f31a5b1d8e1efe2fe740e97daaa7cb26a386c09750172e09aca7a7f0d"
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
