$stamp =  Get-Date -Format "MMddyyyyHHmm"
$destination = ".\backup\greenvillage"+$stamp+".db.bak"
Copy-Item -Path .\greenvillage.db -Destination $destination
Write-Host "Backup effectué - Appuyez sur une touche pour continuer"
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")