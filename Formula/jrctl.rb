class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.0.0/jrctl_darwin_amd64"
	sha256 "651146f4d7bba70335bf8305f1dfd7f86d0d0dbdc0b80abbce49ee96b6715346"
	version "1.0.0"

	def install
		bin.install "jrctl_darwin_amd64" => "jrctl"
	end

	test do
		system "#{bin}/jrctl", "--help"
	end

end
