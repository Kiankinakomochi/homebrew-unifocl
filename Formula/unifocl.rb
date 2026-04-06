class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.9"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.9/unifocl-3.8.9-macos-arm64.tar.gz"
  sha256 "9aa2fea5cd74cffc052d7f19cc2831378240bf8bfc5f7c6eec2920528de20aba"
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
