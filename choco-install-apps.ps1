# ------------- App hashtables ("dictionaries") -----------------

# Modify this to you linking. Just un-comment or comment (#) software you want to have / don't want to have.
# For further instructions see: https://github.com/vii33/ChocoVanillaPackage

$packages = @{
# --- Basics ---
    '7zip'='';
    thunderbird='';
    powertoys='';
# --- Browsers ---
    googlechrome='';
    
# --- File Sync Tools ---
    googledrive='';

# --- Collaboration Tools ---
    'microsoft-teams'='';
    discord='';

# --- System administration ---
    chocolateygui='';    
    windirstat='';
    'microsoft-windows-terminal'='';
    
# --- Crypto ---
    keepassxc='';

    visualstudio2022community='--installPath D:\\VS22Community\\ --add Microsoft.VisualStudio.Workload.NetCrossPlat --add Microsoft.VisualStudio.Workload.ManagedDesktopproductArchx64 --add Microsoft.VisualStudio.Workload.UniversalproductArchx64';
    'sql-server-management-studio'='';
    vscode='--params="/NoDesktopIcon /NoQuicklaunchIcon"';
    git='';
    'github-desktop'='';

    sharex='';
    steam='';
    goggalaxy='';
    epicgameslauncher='';
    'ubisoft-connect'='';
}
# --------------------------------------------------------------


# --------------------- Script start ---------------------------
Write-Host "`n --- The CHOCO VANILLA PACKAGE --- " -ForegroundColor black -BackgroundColor white
Write-Host "originally from https://github.com/vii33/ChocoVanillaPackage `n" -ForegroundColor green

$Break = $False

ForEach($key in $packages.Keys){
    if ($packages[$key]) {
        choco install $key -y $packages[$key]
    } 
    else {
        # Default installer
        choco install $key -y
    }
}