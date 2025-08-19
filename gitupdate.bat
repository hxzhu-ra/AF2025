@echo on
echo start testing MyProject.Acd ...

cd /d "C:\Lab Files\Automated Testing\Simple\LDSDK_Script\LogixUnitTesting_ConsoleApp\bin\Debug\net8.0"

UnitTesting_ConsoleApp.exe
echo Automated testing is complete.

echo Did all the test cases pass? (Y/N)
choice /c YN /n /m "Press Y for Yes or N for No"

REM Check the user's choice
if errorlevel 2 (
    echo You chose No. Please review the test results.
    exit
) else (
    echo You chose Yes. Proceeding to the next step...
)

echo Start to committing and pushing Myproject.Acd to GitHub

cd /d "C:\Lab Files\VcsTools\MyProject"
git add MyProject.Acd 
git commit -m "Updated MyProject.Acd again"
git push origin master

echo git push is complete. 
pause
