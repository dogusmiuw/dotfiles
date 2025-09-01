$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function tab {
  wezterm cli set-tab-title @args
}

function v {
  param(
      [string]$File
      )

    if ($File) {
      tab "vim: $File"
        & nvim $File
    } else {
      tab "vim"
        & nvim
    }

  tab pwsh
}

function lg {
  tab lazygit
    & lazygit @args
    tab pwsh
}

function notes {
  tab notes
    & nvim ~/notes
    tab pwsh
}

function notes-sync {
  Push-Location ~/notes
    git add .
    git commit -m "update notes"
    git push
    Pop-Location
}

tab pwsh

oh-my-posh init pwsh --config "C:/Users/dceli/posh/robbyrussell.omp.json" | Invoke-Expression
