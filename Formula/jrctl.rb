class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.0.4/jrctl_darwin_amd64"
	sha256 "f54702d2b8e6dd14031fb1f345d09dd14bf5c836fe383ba25e58bdeff6f59a6a"
	version "1.0.4"

	def install
		bin.install "jrctl_darwin_amd64" => "jrctl"
	end

	test do
		system "#{bin}/jrctl", "--help"
	end

end
