class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/1.0.2/jrctl_darwin_amd64"
	sha256 "c6ff6998c48aee7eccf7b0a221f985d71b09012481fa93b8575ee75296c4b6e5"
	version "1.0.2"

	def install
		bin.install "jrctl_darwin_amd64" => "jrctl"
	end

	test do
		system "#{bin}/jrctl", "--help"
	end

end
