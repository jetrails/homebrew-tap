class Jrctl < Formula

	desc "Command line tool to help interact with our API"
	homepage "https://github.com/jetrails/jrctl"
	url "https://github.com/jetrails/jrctl/releases/download/2.1.1/jrctl-2.1.1-darwin.tar.gz"
	sha256 "1c2cbbb69c176e4faefb2e7cf9a8ac47774c4a81176214324b3934adf1c7df54"
	version "2.1.1"

	def install
		bin.install "bin/jrctl_darwin_amd64" => "jrctl"
		man1.install "man/jrctl-firewall-allow-cloudflare.1"
		man1.install "man/jrctl-firewall-allow.1"
		man1.install "man/jrctl-firewall-deny.1"
		man1.install "man/jrctl-firewall-list.1"
		man1.install "man/jrctl-firewall-unallow-cloudflare.1"
		man1.install "man/jrctl-firewall-unallow.1"
		man1.install "man/jrctl-firewall-undeny.1"
		man1.install "man/jrctl-firewall.1"
		man1.install "man/jrctl-secret-create.1"
		man1.install "man/jrctl-secret-delete.1"
		man1.install "man/jrctl-secret-read.1"
		man1.install "man/jrctl-secret.1"
		man1.install "man/jrctl-server-ingest.1"
		man1.install "man/jrctl-server-list.1"
		man1.install "man/jrctl-server-restart.1"
		man1.install "man/jrctl-server-token.1"
		man1.install "man/jrctl-server-version.1"
		man1.install "man/jrctl-server.1"
		man1.install "man/jrctl-transfer-receive.1"
		man1.install "man/jrctl-transfer-send.1"
		man1.install "man/jrctl-transfer.1"
		man1.install "man/jrctl.1"
		system "#{bin}/jrctl completion bash > /usr/local/etc/bash_completion.d/jrctl"
	end

	test do
		system "#{bin}/jrctl", "-v"
	end

end
