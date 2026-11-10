# ═══════════════════════════════════════════════════════════════════
#  GitHub Profile Deploy Script (PowerShell) — Mohamed Lamine Saidane
# ═══════════════════════════════════════════════════════════════════

Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "  Deploying GitHub Profile for Mohamedamine2004" -ForegroundColor Cyan
Write-Host "===================================================" -ForegroundColor Cyan
Write-Host ""

# Navigate to script folder
Set-Location -Path $PSScriptRoot

# Initialize local git repository if missing
if (-not (Test-Path ".git")) {
    Write-Host "[*] Initializing local Git repository (branch: main)..." -ForegroundColor Yellow
    git init -b main
} else {
    Write-Host "[*] Git repository already present." -ForegroundColor Green
}

# Configure remote origin
$remote = git remote get-url origin 2>$null
if (-not $remote) {
    Write-Host "[*] Adding remote origin: https://github.com/Mohamedamine2004/Mohamedamine2004.git" -ForegroundColor Yellow
    git remote add origin https://github.com/Mohamedamine2004/Mohamedamine2004.git
} else {
    Write-Host "[*] Remote origin: $remote" -ForegroundColor Green
}

# Stage profile files
Write-Host "[*] Staging README.md, workflows, and task.md..." -ForegroundColor Yellow
git add README.md .github/ task.md

# Commit
git commit -m "feat: launch modern Bento-style GitHub profile"

# Confirmation to push
Write-Host ""
$confirm = Read-Host "Do you want to push to GitHub now? (y/n)"
if ($confirm -eq 'y' -or $confirm -eq 'Y') {
    Write-Host "[*] Pushing to origin main..." -ForegroundColor Cyan
    git push -u origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "🎉 [SUCCESS] Profile published! Check: https://github.com/Mohamedamine2004" -ForegroundColor Green
    } else {
        Write-Host ""
        Write-Host "⚠️ If this is your first push to an existing repo with files, you may need:" -ForegroundColor Yellow
        Write-Host "   git push -u origin main --force" -ForegroundColor Yellow
    }
} else {
    Write-Host "[*] Push cancelled. You can run publish.bat or publish.ps1 anytime." -ForegroundColor Gray
}

