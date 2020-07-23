cask 'zulu-jdk15ea' do
  version '15.0.67,15.0.0-ea.31'
  sha256 'd8d8872ebd8df06626dfa435a21f1d5352fdb725ff6d7b02df9a5f1a4c613524'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64.tar.gz",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 15 EA'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :high_sierra'

  artifact "zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64/zulu-#{version.major}.jdk", target: "/Library/Java/JavaVirtualMachines/zulu-#{version.major}ea.jdk"
end
