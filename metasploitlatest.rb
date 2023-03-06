cask "metasploit" do
  version "6.3.5,20230225112950"
  sha256 "41abe5b1ffc1c93ae5459c846f9aa863773744e188c95712bf99e94e974d6583"

  url "https://osx.metasploit.com/metasploitframework-latest.pkg"
  name "Metasploit Framework"
  desc "Penetration testing framework"
  homepage "https://www.metasploit.com/"


  depends_on formula: "nmap"

  pkg "metasploitframework-latest.pkg"
  binary "/opt/metasploit-framework/bin/msfbinscan"
  binary "/opt/metasploit-framework/bin/msfconsole"
  binary "/opt/metasploit-framework/bin/msfd"
  binary "/opt/metasploit-framework/bin/msfdb"
  binary "/opt/metasploit-framework/bin/msfelfscan"
  binary "/opt/metasploit-framework/bin/msfmachscan"
  binary "/opt/metasploit-framework/bin/msfpescan"
  binary "/opt/metasploit-framework/bin/msfrop"
  binary "/opt/metasploit-framework/bin/msfrpc"
  binary "/opt/metasploit-framework/bin/msfrpcd"
  binary "/opt/metasploit-framework/bin/msfvenom"

  uninstall script: {
              executable: "/opt/metasploit-framework/bin/msfremove",
              input:      ["y"],
              sudo:       true,
            },
            rmdir:  "/opt/metasploit-framework"

  zap trash: "~/.msf4"
end

