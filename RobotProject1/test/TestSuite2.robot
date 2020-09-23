*** Test Cases ***
FirstTest
    [Tags]    SmokeTest
    Log    This is my first test

SecondTest
    Log    This is my second test
    Set Tags    Regression1
    Remove Tags    Regression1

ThirdTest
    Log    This is my third test