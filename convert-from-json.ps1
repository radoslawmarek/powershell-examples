# How to convert from JSON string and read properties

$thirdObjectJson = @"
        {
        "ThirdObject" : {
            "FirstSubObject": {
                "Name": "First Sub Object"
            },
            "SecondSubObject": {
                "Name": "Second Sub Object"
            }
        }
    }
"@

$thirdObject = ConvertFrom-Json $thirdObjectJson

$thirdObject.ThirdObject.PSObject.Properties
foreach ($prop in $thirdObject.ThirdObject.PSObject.Properties) {
    $prop.Name
}