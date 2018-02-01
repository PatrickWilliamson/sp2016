$serverPrefix = "cam-i-"
$servers = @(	"ap476pp",
		"db476pp", "db477pp",
		"sch476pp",
		"sdc476pp",
		"ws476pp", "ws477pp"
	)
$group = "Administrators,group"
$domain = "anglia"
$accountToAdd = "sp16-frmp"

foreach ($server in $servers) {
	"Adding {0}{1}" -f $serverPrefix,$server

	$pathToServerGroup = "WinNT://{0}{1}/{2}" -f $serverPrefix,$server,$group
	$pathToAccount = "WinNT://{0}/{1}" -f $domain,$accountToAdd

	"([ADSI]$pathToServerGroup).Add($pathToAccount)"
	([ADSI]"$pathToServerGroup").Add("$pathToAccount")
}