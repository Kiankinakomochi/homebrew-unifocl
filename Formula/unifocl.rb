class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "1.4.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v1.4.0/unifocl-1.4.0-macos-arm64.tar.gz"
  sha256 "a71860b7fe91f0c66992c5ede31b25a71c95d26de9a098aabf9164216c3b6557"
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
