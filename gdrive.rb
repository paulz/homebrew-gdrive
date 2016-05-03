class Gdrive < Formula
  desc "Google Drive CLI Client"
  homepage "https://github.com/prasmussen/gdrive"
  url "https://github.com/prasmussen/gdrive/archive/2.1.0.tar.gz"
  sha256 "a1ea624e913e258596ea6340c8818a90c21962b0a75cf005e49a0f72f2077b2e"
  head "https://github.com/prasmussen/gdrive.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/prasmussen/"
    ln_sf buildpath, buildpath/"src/github.com/prasmussen/gdrive"
    system "go", "build", "-o", "gdrive", "."
    bin.install "gdrive"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gdrive version")
    assert_match "gdrive usage:", shell_output("#{bin}/gdrive help")
    assert_match "oauth2: cannot fetch token: 400 Bad Request", shell_output("#{bin}/gdrive about --refresh-token 0", 1)
    assert_match "googleapi: Error 401: Invalid Credentials, authError", shell_output("#{bin}/gdrive about --access-token 0", 1)
  end
end
