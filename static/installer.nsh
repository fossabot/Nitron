!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Nitron" "Software\Clients\StartMenuInternet\Wexond\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron" "" "Nitron HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\Application" "AppUserModelId" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\Application" "ApplicationIcon" "$INSTDIR\Nitron.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\Application" "ApplicationName" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\Application" "ApplicationCompany" "Nitron"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\DefaultIcon" "DefaultIcon" "$INSTDIR\Nitron.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Nitron\shell\open\command" "" '"$INSTDIR\Nitron.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Nitron" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Nitron" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron" "" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\DefaultIcon" "" "$INSTDIR\Nitron.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities" "ApplicationName" "Niton"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities" "ApplicationIcon" "$INSTDIR\Nitron.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities\FileAssociations" ".htm" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities\FileAssociations" ".html" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities\URLAssociations" "http" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities\URLAssociations" "https" "Nitron"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\Capabilities\StartMenu" "StartMenuInternet" "Nitron"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitronshell\open\command" "" "$INSTDIR\Nitron.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Nitron"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Nitron"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Nitron"
!macroend
