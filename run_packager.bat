@echo off

REM build driver scripts
del /F /Q "vCenterShellPackage\Resource Scripts\."
del /F /Q "vCenterShellPackage\Topology Scripts\."

python driver_packager.py package_specs\\deployment_service_driver.ini
python driver_packager.py package_specs\\vlan_auto_service.ini
python driver_packager.py package_specs\\orchestration_service.ini

python driver_packager.py package_specs\\environment_connect_all.ini

REM vCenter Driver package
python driver_packager.py package_specs\\vcentershell_driver.ini

REM build vCenterShell package
python shell_packager.py vCenterShell