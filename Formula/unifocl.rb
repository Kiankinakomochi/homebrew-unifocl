class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.1.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.1.0/unifocl-2.1.0-macos-arm64.tar.gz"
  sha256 "74e855245c74ed1dcd35d58ca409be36d7fef92b1cd9d9754a21735d1e2ed940"
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
