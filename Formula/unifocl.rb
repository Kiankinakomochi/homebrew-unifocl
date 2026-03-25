class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.4.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.4.0/unifocl-2.4.0-macos-arm64.tar.gz"
  sha256 "26f6dd274f9c228497536049f65267da8a95b4a8df5530e11b65bf17dedcd84b"
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
