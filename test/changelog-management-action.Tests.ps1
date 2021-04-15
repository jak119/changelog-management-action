$global:NL = [System.Environment]::NewLine

Describe 'mode readdata' {
    It 'lastversion' {
        $env:READ_LASTVERSION | Should -Be "1.1.0"
    }
    It 'releasenotes' {
        $env:READ_RELEASENOTES | Should -Be ("### Added$NL" +
            "- Released Addition 1$NL" +
            "- Released Addition 2")
    }
}

Describe 'mode release' {
    It 'lastversion' {
        $env:READ_LASTVERSION | Should -Be "2.0.0"
    }
    It 'releasenotes' {
        $env:READ_RELEASENOTES | Should -Be ("### Added$NL" +
            "- Unreleased Addition 1$NL" +
            "- Unreleased Addition 2")
    }
}