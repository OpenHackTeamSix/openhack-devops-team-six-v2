param (               
)

try
{
    $urlPoi = 'https://openhack5qk81i73poi-staging.azurewebsites.net/api/healthcheck/poi'
    $urlTrips = 'https://openhack5qk81i73trips-staging.azurewebsites.net/api/healthcheck/trips'
    $urlUserprofile = 'https://openhack5qk81i73userprofile-staging.azurewebsites.net/api/healthcheck/user'
    $urlUserJava = 'https://openhack5qk81i73userjava-staging.azurewebsites.net/api/healthcheck/user-java'
    
    $poiResponse = Invoke-WebRequest `
        -UseBasicParsing $urlPoi `
        -Method Get `
        -Headers $Header

    if($poiResponse.StatusDescription -ne 'OK')
    {
        throw "Poi health check failed";
    }

    $tripsResponse = Invoke-WebRequest `
        -UseBasicParsing $urlTrips `
        -Method Get `
        -Headers $Header

    if($tripsResponse.StatusDescription -ne 'OK')
    {
        throw "Trips health check failed";
    }

    $userProfileResponse = Invoke-WebRequest `
        -UseBasicParsing $urlUserprofile `
        -Method Get `
        -Headers $Header
    
    if($userProfileResponse.StatusDescription -ne 'OK')
    {
        throw "User Profile health check failed";
    }

    $userJavaResponse = Invoke-WebRequest `
        -UseBasicParsing $urlUserJava `
        -Method Get `
        -Headers $Header

    if($userJavaResponse.StatusDescription -ne 'OK')
    {
        throw "Users Java health check failed";
    }
}
catch
{   
    Write-Error "`n$(Get-Date) Exception!`n" 
    Write-Error $_.Exception.Message    
}