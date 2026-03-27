class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.6.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.6.0/unifocl-2.6.0-macos-arm64.tar.gz"
  sha256 "07b12aefd3eb522bb3e22fbc43c3d5b69dab9feca6203ece6c5fb47ce73d7da4"
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
