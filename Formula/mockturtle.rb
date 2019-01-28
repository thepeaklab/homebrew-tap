class Mockturtle < Formula
  desc "Mockturtle"
  homepage "https://github.com/thepeaklab/mockturtle"
  url "git@github.com:thepeaklab/mockturtle.git", using: :git
  version "0.1.0"
  sha256 ""

  depends_on :xcode => ["10.0", :build]
  depends_on 'ctls'
  depends_on 'libressl'

  def install
    system "swift build --configuration release --disable-sandbox"
    system "mv .build/release/Run #{prefix}"
    system "mv Homebrew/mockturtle #{prefix}"

    bin.mkpath
    bin.install "#{prefix}/mockturtle"
  end

  test do
    system "false"
  end
end