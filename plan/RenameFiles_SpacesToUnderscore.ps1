# Rename all files in the current folder: replace spaces with underscores

Get-ChildItem -File | ForEach-Object {
    $newName = $_.Name -replace ' ', '_'

    if ($_.Name -ne $newName) {
        Rename-Item -Path $_.FullName -NewName $newName
    }
}