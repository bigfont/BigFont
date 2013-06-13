



####################################
#setup user preferences
####################################

<#
Optional. If set allows you to specify the javascript files to minify.
eg @('bootstrap', 'bigfont')
#>
$arrTargetJavascriptFiles = @();
<#
Optional. If set allows you to specify the less files to compile.
eg @('bigfont', 'responsive', 'bigfont')
#>
$arrTargetLessFiles = @();
<#
True if you want to optimize images, which takes some time.
#>
$doOptimizeImages = $false;





####################################
#retrieve modules and executables
#then navigate to the assets-N folder
####################################

#retrieve relevant directories
$scriptPath = $MyInvocation.MyCommand.Path;
$scriptDir = Split-Path $scriptPath;
$scriptParentDir = Split-Path -parent $scriptDir; 
$assetsDir = Get-ChildItem $scriptParentDir -Directory | 
    Where-Object { $_.Name -match 'assets-\d' }


$assetsDir.FullName;