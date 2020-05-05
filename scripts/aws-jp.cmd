REM AWS CLI with %USERPROFILE%\.aws settings
@ECHO ON

@IF EXIST "C:\Program Files\Amazon\AWSCLI\aws.exe" (
  "C:\Program Files\Amazon\AWSCLI\aws.exe" %*
) ELSE (
  docker run --rm --tty --interactive tuckn/aws-cli-tokyo %*
)

@PAUSE
