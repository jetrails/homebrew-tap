class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.0.3/jrctl_darwin_amd64"
	sha256 "3147e90a2f9866680a7ca016ba4c1e6412bb9a48ecd0ba933e6c9c68400f5825"
	version "1.0.3"

	def install
		bin.install "jrctl_darwin_amd64" => "jrctl"
	end

	test do
		system "#{bin}/jrctl", "--help"
	end

end
