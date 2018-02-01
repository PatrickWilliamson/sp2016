$serverPrefix = "cam-i-"
$servers = @(	"ap476pp",
		"db476pp", "db477pp",
		"sch476pp",
		"sdc476pp",
		"ws476pp", "ws477pp"
	)

foreach ($server in $servers) {
	$computerName = "{0}{1}" -f $serverPrefix,$server
	$computerName

	Invoke-Command -ComputerName $computerName -FilePath ./Disable-InternetExplorerESC.ps1
}