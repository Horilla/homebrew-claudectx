class Claudectx < Formula
  desc "Reduce Claude Code token usage by up to 80%"
  homepage "https://github.com/Horilla/claudectx"
  url "https://registry.npmjs.org/claudectx/-/claudectx-1.1.2.tgz"
  sha256 "4bc23dece5aee4493f3ac7b7cf3884d41f9279ac57dddea357b2625023eae19a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.2", shell_output("#{bin}/claudectx --version")
  end
end
