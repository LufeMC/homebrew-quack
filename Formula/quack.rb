class Quack < Formula
  desc "Zero-config bug detection for your CI"
  homepage "https://github.com/LufeMC/quack"
  url "https://registry.npmjs.org/@luisf_mc/quack/-/luisf_mc-quack-0.1.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end
