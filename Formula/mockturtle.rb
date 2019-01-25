class Mockturtle < Formula
  desc "Mockturtle"
  homepage "https://github.com/thepeaklab/mockturtle"
  url "git@github.com:thepeaklab/mockturtle.git", using: :git
  version "0.1.0"
  sha256 ""

  depends_on :xcode => ["10.0", :build]

  def install
    system "swift build --configuration release --build-path #{prefix}"
    system "mv #{prefix}/release/Run #{prefix}/bin/Run"
    
    bin.mkpath
    bin.install "#{prefix}/release/swiftychangelog"
  end

  test do
    system "false"
  end
end