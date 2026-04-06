class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.9.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.9.0/unifocl-3.9.0-macos-arm64.tar.gz"
  sha256 "17b803be1b97ca77ef830cf1b0491644f95f35448597d34874335506f9e9ab6a"
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
