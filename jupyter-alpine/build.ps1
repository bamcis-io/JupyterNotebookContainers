Param(
	[Parameter(Position = 0, ValueFromPipeline = $true)]
	[ValidateNotNullOrEmpty()]
	[System.String]$Version = "5.5"
)

docker build ../jupyter-alpine -t bamcis/jupyter-alpine:$Version -t bamcis/jupyter-alpine:latest --build-arg "VERSION=$Version"