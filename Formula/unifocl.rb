class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.17.2"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.17.2/unifocl-3.17.2-macos-arm64.tar.gz"
  sha256 "b2473c83c7ceda2cb06cd6d26040eb0df11208f00fe75468e38bc0f324d12a14"
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
