class Claudectx < Formula
  desc "Reduce Claude Code token usage by up to 80%"
  homepage "https://claudectx.horilla.com"
  url "https://registry.npmjs.org/claudectx/-/claudectx-1.1.5.tgz"
  sha256 "906d994805b5fa74d1242f20d12c5f175073e01b76f935f88b136f4ae61119bf"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.5", shell_output("#{bin}/claudectx --version")
  end
end
