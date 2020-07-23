cask 'zulu-jdk16ea' do
  version '16.0.13,16.0.0-ea.5'
  sha256 '4d7b1cc3771572ae8de31316a347a8bce957b5b139918e04fa32d95e19acdd9e'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64.tar.gz",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 16 EA'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :high_sierra'

  artifact "zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64/zulu-#{version.major}.jdk", target: "/Library/Java/JavaVirtualMachines/zulu-#{version.major}ea.jdk"
end
