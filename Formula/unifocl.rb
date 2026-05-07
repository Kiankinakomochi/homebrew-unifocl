class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.15.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.15.1/unifocl-3.15.1-macos-arm64.tar.gz"
  sha256 "3e9842a45a83ba6d4fd6b85deb450e27362bae377ffa6b5941c4b3d8b9ef4430"
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
