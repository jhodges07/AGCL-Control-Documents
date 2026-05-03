Get-ChildItem -File -Filter "*.md" | ForEach-Object {
    $name = $_.Name.ToLower()

    $name = $name `
        -replace 'point_', '' `
        -replace '__+', '_' `
        -replace '—', '' `
        -replace '-', '_' `
        -replace '&', 'and' `
        -replace '[^a-z0-9_\.]', '' `
        -replace '_+', '_'

    Rename-Item $_.FullName $name
}