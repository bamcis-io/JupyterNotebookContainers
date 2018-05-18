Param(
	[Parameter(Position = 0, ValueFromPipeline = $true)]
	[ValidateNotNullOrEmpty()]
	[System.String]$Version = "5.5"
)

docker build ../jupyter-debian -t bamcis/jupyter-debian:$Version -t bamcis/jupyter-debian:latest --build-arg "VERSION=$Version"