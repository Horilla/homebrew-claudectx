class Claudectx < Formula
  desc "Reduce Claude Code token usage by up to 80%"
  homepage "https://github.com/Horilla/claudectx"
  url "https://registry.npmjs.org/claudectx/-/claudectx-1.1.3.tgz"
  sha256 "9e1eae59894bd0325cc86a440d42ba61fe9db8ad7caa37453a085fde55839412"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.3", shell_output("#{bin}/claudectx --version")
  end
end
