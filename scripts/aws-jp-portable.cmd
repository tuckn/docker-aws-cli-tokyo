REM AWS CLI with <A Current Working Direcotry>\.aws settings
@ECHO ON

docker run --rm --tty --interactive --volume %CD%\.aws:/root/.aws tuckn/aws-cli-tokyo %*

@PAUSE
