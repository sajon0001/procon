#!/usr/bin/env powershell -NonInteractive -NoProfile -File
$a=@($input)
[int]$n=$a[0]
$z=1
for($i=0;$i -lt $n;$i++){
	$x=$a[$z++].split()
	$y=[int]$x[0]-1
	$m=[int]$x[1]-1
	$d=[int]$x[2]
	$r=0
	if($y%3 -ne 2){$r=[math]::truncate($m/2)}
	Write-Host(196471-$y*195-[math]::truncate($y/3)*5-$m*20+$r-$d);
}