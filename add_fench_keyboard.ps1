# Get the current language/keyboard list
$current = Get-WinUserLanguageList

# Add French (France) if it's not already present
if (-not ($current.LanguageTag -contains "fr-FR")) {
    $current.Add("fr-FR")   # adds French keyboard, does NOT remove or reorder others
    Set-WinUserLanguageList $current -Force
}

# Show the result
Get-WinUserLanguageList
