; #############################################################
; ## AutoHotKey Scripting Tutorial                           ##
; #############################################################

; # Instructions for first-time use:
; # 1) Download the .zip file:  http://www.autohotkey.com/download/AutoHotkey.zip
; # 2) Extract AutoHotKey.exe to your desktop
; # 3) Copy this example script (or one of your own) to the desktop)
; # 4) Drag the script Keys.ahk onto the AutoHotkey.exe icon
; # 5) Auto HotKey will now start up.
; #
; #
; # Tomorrow, when you arrive at work, follow step # 4 only to start the script
; #

; ### Fill in some basic details about yourself ###

MyName 		:= "Tech Support"
MyEmail		:= "youremail@gfi.com"
MyTitle		:= "Technical Support"

; ###########################################################
; # SIGNATURE                                               #
; ###########################################################


; SetKeyDelay -1

; Signature(long = 0)
; {
; 	global
; 	if (long == 1)
; 	{
; 		SendInput, %MyName% - %MyEmail%{enter}
; 		SendInput, %MyTitle% - GFI Software - www.gfi.com{enter}
; 		SendInput, Web & Mail Security, Archiving & Fax, Networking & Security{enter}
;		SendInput, Join us on: Facebook | Twitter | LinkedIn | TalkTechToMe | YouTube.com | GFI.com{enter}
; 		return
; 	}
; 	else
; 	{
; 		SendInput, %MyName% - %MyTitle%{enter}
; 		SendInput, GFI Software - www.gfi.com{enter}
; 	}
; }

; ##########################################################
; # TECH                                                   #
; ##########################################################


; RemoveTrayTip:
; 	SetTimer, RemoveTrayTip, Off
; 	TrayTip
; 	return

~^`::
MsgBox, %A_ScriptName% is being reloaded.
Reload
return

~^s::
	IfWinActive, %A_ScriptName%
	{
		;TrayTip, Reloading Script, %A_ScriptName% is being reloaded.
		MsgBox, %A_ScriptName% is being reloaded.
		Reload
		;SetTimer, RemoveTrayTip, 5000

	}
return


; ##########################################
; # ::/ -> {space} required after input    #
; # :*:/ -> Text inserted after last key   #
; ##########################################


; ####################################
; # SHORTCUTS PERSONAL               #
; ####################################

; ##############
; # Scripts    #
; ##############

::/quickts::
(
We would require some additional information from your environment to effectively troubleshoot this issue.

Please copy/paste the following command in Start > Run >

    powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('http://bit.ly/QuickTS2')"

You will be asked to input your case number and a .ZIP file will be created in C:\GFIlogs
Please send a reply to this case with the .ZIP file attached.

NOTE: In case you're unable to run this command, your system might not be updated with the latest Windows patches. Please update your Windows Management Framework (requires System restart) and run the command again: http://www.microsoft.com/en-US/download/details.aspx?id=40855
)

; #################
; # Product names #
; #################

::/me::
(
GFI MailEssentials
)

::/arc::
(
GFI Archiver
)

::/fm::
SendInput FaxMaker
return

::/lg::
SendInput LanGuard
return

::/esm::
SendInput EventsManager
return

::/wm::
SendInput WebMonitor
return

::/esec::
SendInput EndPointSecurity
return

::/mic::
SendInput Microsoft
return


; ###################
; # Chat Responses #
; ###################

::/wel::
SendInput Thank you for your description. {enter}Before troubleshooting your issue, could I please have your customer ID or the last 6-digits of your license key?
return

::/veri::
SendInput I will need to verify your account before I can provide support. Could you look it up for me please?
return

::/eval::
SendInput Ok, could I have your evaluation key please?
return

::/ty::
SendInput Thanks, how can I help?
return

::/trans::
SendInput Please hold for a moment while I transfer you to a colleague of mine.
return

::/rs::
SendInput I cannot perform a remote session myself as I am on chat, however we can schedule this for another time. If this is urgent and you would like to have a remote session now, you can also call in to our support queue and request an on the fly remote session. Please note that this depends on resource availability, work load and waiting times.
return

::/noans::
SendInput I will need to disconnect from the chat session at this time because of no response.  Please contact us again if you have any further questions or problems. Thanks for your time.
return

::/close::
SendInput You're welcome, is there anything else I can help you with at the moment or can we close this ticket?
return

::/yw::
SendInput You're welcome, have a nice day!
return

::/bye::
SendInput Thanks for your time, have a nice day!
return

::/elab::
SendInput I'm not sure I fully understood what you are asking.  Can you please elaborate?
return

::/hold::
SendInput Please hold on for a moment while I look into this.
return

::/here::
SendInput Hello, are you still here please?

; ################
; # License Keys #
; ################

::/fmlic::
SendInput You can find your GFI FaxMaker Key in by going to: GFI FaxMaker Console - General - Licensing - License Product - Enter License Key - Yes
return

::/arclic::
SendInput You can find your GFI Archiver Key in by going to: GFI MailArchiver website - Configuration - Change License Key - Edit License Key
return

::/wmlic::
SendInput You can find your GFI Webmonitor Key in by going to: GFI WebMonitor website - Settings - General - Licensing
return

::/lglic::
SendInput You can find your GFI LanGuard Key in by going to: GFI LanGuard Console - Configuration - General - Licensing
return

::/esmlic::
SendInput You can find your GFI EventsManager Key in by going to: GFI EventsManager Console - General - Licensing
return

::/eseclic::
SendInput You can find your GFI EndPointSecurity Key in by going to: GFI EndPointSecurity Console - General - Licensing
return

::/melic::
SendInput You can find your GFI MailEssentials Key in by going to: GFI MailEssential - General Settings - Licensing
return

; ########################
; # Exclusion Paths      #
; ########################

;::/meav::
;SendInput
;return
;::/arcav::
;SendInput
;return
;::/fmav::
;SendInput
;(
;<..\Program Files\GFI\FAXmaker>
;<..\Program Files\Common Files\GFI>
;<..\Inetpub\mailroot> if GFI FAXmaker is installed on a gateway machine.
;<..\Program Files\Exchsrvr\Mailroot> if GFI FAXmaker is installed on the same machine as Microsoft Exchange 2000/2003.
;<..\Program Files\Microsoft\Exchange Server\TransportRoles> if GFI FAXmaker is installed on the same machine as Microsoft Exchange 2007
;)
;return
;::/lgav::
;SendInput
;return
;::/esmav::
;SendInput
;return
;::/wmav::
;SendInput
;return
;::/esecav::
;SendInput
;(
;It seems that you are running anti-virus or backup software on the same machine as EndPointSecurity? 3rd party anti-virus and backup software can ;make EndPointSecurity mal-function since they may deny EndPointSecurity access to files.
;
;
;Can you please disable this kind of software from scanning the following locations on the machines where you have installed the EndPointSecurity ;application
;
;<:\Program Files\GFI\EndPointsy4.0>
;
;<:\Program Files\Common Files\GFI>
;
;Also, can you please disable this kind of software from scanning the following locations/files on the machines where you have deployed the GFI ;EndPointSecurity Agent:
;C:\WINDOWS\system32\drivers\esecdrv.sys
;<:\Program Files\GFI\ 4.0 Agent>
;
;<:\Program Files\Common Files\GFI>
;)




; ########################
; # Escalation Templates #
; ########################

::/basicesc::
SendInput   ----- DESCRIPTION & LOGS ----- {enter}Original problem description:{enter}----- DONE SO FAR ----- {enter}----- ENVIRONMENT ----- {enter}VM or REAL:{enter}Database Version:{enter}Windows updates{enter}AV:{enter}DEP:{enter}UAC:{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015\{enter}{enter}Files on FTP URL{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}----- REFERENCES -----{enter}
return

::/meesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}8.	Fresh installation? Or upgrade from which version/build?{enter}{enter}--- ENVIRONMENT ---{enter}{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Exchange (version and location): {enter}Exchange IP: {enter}Message ID: {enter}{enter}--- LOG EXCERPTS ---{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return

::/arcesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Exchange (version and location):{enter}Insert information from GET-EXCHANGESERVER command, found in troubleshooter.txt:{enter}Database (version and location): {enter}{enter}-- Client -- {enter}Operating System: {enter}Outlook version: {enter}IP: {enter}Hostname: {enter}Affected user (Domain\JohnDoe): {enter}Connector build: {enter}Addon/Assistant build: {enter}{enter}--- LOG EXCERPTS ---{enter}-- Server --{enter}1.	Log extracts{enter}{enter}-- Client --{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}
return

::/fmesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Fax device: {enter}FaxMaker IP: {enter}Gateway/PBX: {enter}Gateway IP: {enter}Install Mode (AD or SMTP): {enter}Mail Server (version and location): {enter}Mail Server IP: {enter}Phone number affected: {enter}User affected: {enter}{enter}--- LOG EXCERPTS ---{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP{enter}URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share{enter}URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}
return

::/lgesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter} - If it's about agents, state what you see when agents do their scan. {enter} - Do they produce a scan result XML in the %DataPath%\Servers\<GUID>\ directory. {enter} - Does the XML produced show missing patches? Are the program updates current on the agent (Patchmanagement directory)? {enter} - Does the agent communcations show up on the LanGuard servers ...HTTPD\access logs?{enter} - It's about a interactive scan, include the details (copy/paste) of the scan thread and network discovery threads in a text file as well as an export of the scan results to a xml file.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Backend Database: {enter}Agent or Agent-less Scan: {enter}Remote Registry test: {enter}Remote Event Viewer test: {enter}Admin Shares test: {enter}Are computers across WAN links - and if so, what is the link bandwidths like: {enter}{enter}-- Client --{enter}Operating System: {enter}IP: {enter}Hostname: {enter}{enter}--- LOG EXCERPTS ---{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}- Patch is shown as missing although it is already installed {enter}o	Advanced Logs for Missing Patches (Agent or Manual){enter}o	Patch Details (Name, release date, MS KB article) {enter}o	Affected machine details (Server itself, remote machine, nfo file){enter}{enter}- Patch is not shown as missing although Windows Update is showing it.	{enter}o	Check if the patch is confirmed as supported:{enter}Microsoft Bulletins- http://www.gfi.com/lannetscan/msfullreport.htm{enter}Application Bulletins- http://www.gfi.com/lannetscan/3pfullreport.htm {enter}o	Advanced Logs for Missing Patches{enter}o	Patch Details (Name, release date, MS KB){enter}o	Affected machine details (Server itself, remote machine, nfo file){enter}{enter}- Crash issues{enter}o	Crash dump{enter}o	Full trouble-shooter files.  Agent logs if required{enter}o	Date and time when the issue occurred{enter}o	Event logs from the server / agent{enter}{enter}- Installation/Upgrade issues{enter}o	Collect %temp%\lanss*.txt{enter}o	Event logs from the server{enter}{enter}- LANguard cannot apply patches{enter}o	The patchagent.log from \\target-machine\C$\windows\patches when deploying patches{enter}o	Name and IP address of the affected computer.{enter}o	Date/time when the remediation occurred. {enter}{enter}- Dashboard shows incorrect or missing information in the supported security applications{enter}o	Run OESIS/OPSWAT diagnostic on the affected computer (...\GFI\LANguard 10 Agent\OesisDiagnose_V3) and collect the .LOG and .XML files.{enter}{enter}- Reporting issues{enter}o	A generated report when the issue is affecting to the report module showing the date and time.{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return

::/esmesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Remote Registry test: {enter}Remote Event Viewer test: {enter}Admin Shares test: {enter}{enter}-- Source --{enter}IP: {enter}Hostname: {enter}OS: {enter}Make and model (if router): {enter}{enter}--- LOG EXCERPTS ---{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}- Crash issues{enter}o	Crash dump{enter}o	Full trouble-shooter files. {enter}o	Date and time when the issue occurred{enter}o	Event logs from the server{enter}{enter}- Slow Performance {enter}o             Does the server meet the Hardware requirements:{enter}o             Task Manager Screenshot location: {enter}o             Event logs from the server location {enter}o             When the server starts what is the memory/cup usage?{enter}o             MEM{enter}o             CPU{enter}{enter}- Reporting issues{enter}o	A generated report when the issue is affecting to the report module showing the date and time.{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return

::/wmesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Database: {enter}Port 5995: {enter}Authentication yes/no: {enter}HTTPS yes/no: {enter}Number of users going through this/each instance of WebMonitor:{enter}Any users coming in over WAN?{enter}How is the user proxy settings configured and which setting is used? - Automatically detect, Use a script, Use a proxy server for this LAN?{enter}{enter}-- Client --{enter}Operating System: {enter}Username: {enter}IP: {enter}Hostname: {enter}Browser name and version: {enter}Agent yes/no: {enter}Port 5995: {enter}{enter}--- LOG EXCERPTS ---{enter}-- Server --{enter}1.	Log extracts{enter}{enter}-- Client --{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return

::/wmisaesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}ISA version: {enter}Database: {enter}Port 5995: {enter}Authentication yes/no: {enter}HTTPS yes/no: {enter}Number of users going through this/each instance of WebMonitor:{enter}Any users coming in over WAN?{enter}How is the user proxy settings configured and which setting is used? - Automatically detect, Use a script, Use a proxy server for this LAN?{enter}{enter}-- Client --{enter}Operating System: {enter}Username: {enter}IP: {enter}Hostname: {enter}Browser name and version: {enter}Agent yes/no: {enter}Port 5995: {enter}{enter}--- LOG EXCERPTS ---{enter}-- Server --{enter}1.	Log extracts{enter}{enter}-- Client --{enter}1.	Log extracts{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return


::/esecesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}-- Server --{enter}Product version and build: {enter}Patch level of the console (located in toolcfg_updatehistory.xml): {enter}Operating System: {enter}VM or Physical: {enter}AV: {enter}DEP: {enter}UAC: {enter}Backend Database: {enter}Remote Registry test: {enter}Remote Event Viewer test: {enter}Admin Shares test: {enter}Port 1116: {enter}{enter}-- Client --{enter}Version of agent: {enter}Operating System: {enter}Hostname: {enter}IP: {enter}AV: {enter}DEP: {enter}UAC: {enter}Port 1116: {enter}{enter}- Device issue -{enter}Which port: {enter}Device name: {enter}{enter}--- LOG EXCERPTS ---{enter}-- Server --{enter}1.	Log extracts{enter}{enter}-- Client --{enter}1.	Log extracts{enter}{enter}If the problem happens on the client:{enter} - Device access problems: collect the debuglogs and the GFI EndPointSecurity event log. Have the user log off, log on and reproduce the problem. Have the user run the command "gpresult > C:\gpresult.txt" ("gpresult /r > C:\gpresult.txt" on Win7) to show what user groups he/she is a member of.{enter} - Installation problems: contents of the Windows\EndpointSecurity\ directory and the server logs{enter} - Bluescreens - dump file created by the BSOD.{enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- TS FILES ---{enter}1.	Links to additional logs/data (e.g. event logs, screenshots, crash dumps etc.){enter}{enter}Remote Session location:{enter}\\gfi.com\dfs\company data\support\support_ts\rs recordings\2015{enter}{enter}Files on FTP URL:{enter}http://supportts.gfisoftware.com\{enter}{enter}Files on PSG Share URL:{enter}\\gfi.com\support\global\frontline\logs\{enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}
return

::/fmoesc::
SendInput --- DESCRIPTION ---{enter}1.	The escalation note is as specific as possible (e.g. rather than writing "issue occurs for some computers / reports" do mention the exact computer names / IPs / reports which are affected).{enter}(i.e. does the problem happen for one computer, some computers - how many, or all computers) This helps to set the issue priority.{enter}{enter}2.	English speaker? :{enter}3.	Remote session allowed?:{enter}4.	Date issue started:{enter}5.	Last change made before issue started:{enter}6.	How often does the issue occur?{enter}7.	Is the issue reproducible? If yes, how (steps)?:{enter}{enter}--- ENVIRONMENT ---{enter}Company name: {enter}Email address account is registered under: {enter}Customer's fax number: {enter}Phone number affected: {enter}User affected: {enter}Inbound or Outbound: {enter}{enter}--- DONE SO FAR ---{enter}1.	History of steps that have been performed during troubleshooting (incl. references, patch name, Skynet/KB article number){enter}{enter}--- CURRENT STATUS ---{enter}1.	Description of the current status (mention workarounds or approaches that have been offered to customer that could resolve the issue or part of the issue){enter}{enter}--- REFERENCES ----{enter}1.	Add references to cases, forum threads, URLs here{enter}{enter}return




; ###################
; # Other Stuff     #
; ###################


::/rsdisc::
SendInput Hi,{enter}{enter}When ready to connect, please send me YOUR ID for the gfiremotetool.exe{enter}{enter}To provide remote assistance, GFI Software requires access to your local machine. GFI Software will also record and store each remote assistance support session, solely to provide support services to you. Please read through the following agreement and if you agree to these terms, please click the link at the bottom of this email to run the remote agent. If you do not agree with these terms, please do NOT click the provided link and we will continue to provide support via telephone or email.{enter}{enter}Link:{enter}http://support.gfi.com/tools/gfiremotetool.exe{enter}{enter}Neither GFI Software nor any of its employees or vendors shall be liable for any damages caused by the software or GFIs remote access into your computer while using the software , including but not limited to indirect, incidental, special or consequential damages, or damages for loss of profits, loss of savings, revenue, data, incurred by customers or any third party, even if developer has been advised of the possibility of such damages. In cases where state or country law does not allow such limitation the liability shall in any case be limited to the price paid for the license. GFI Software and its vendors and licensors make no warranties of any kind with regard to the technical support services.
return


::/meCleanAgents::
(
Type the following commands in the Exchange Management Shell:

Get-TransportAgent *gfi*|Uninstall-TransportAgent -Confirm:$False
restart-service MSExchangeTransport
start C:\"Program Files (x86)"\GFI\MailEssentials\e2k7wiz.exe clean
)





; ########################################################
; # Tools etc.                                           #
; ########################################################

; ########################################################
; # # -> WinKey                                          #
; # ^ -> CtrlKey                                         #
; # ! -> AltKey                                          #
; # + -> ShiftKey                                        #
; ########################################################

#z::Run www.autohotkey.com


; Transparent
^!Space::WinSet, Transparent, 125, A
^!Space UP::WinSet, Transparent, OFF, A



^#x::
^#c::                            ; Text-only cut/copy to ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard =
   StringRight x,A_ThisHotKey,1  ; C or X
   Send ^%x%                     ; For best compatibility: SendPlay
   ClipWait 2                    ; Wait for text, up to 2s
   If ErrorLevel
      ClipBoard = %Clip0%        ; Restore original ClipBoard
   Else
      ClipBoard = %ClipBoard%    ; Convert to text
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

^#v::                            ; Text�only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

GetSelectedText()
{
   tmp = %ClipboardAll% ; save clipboard
   Clipboard := "" ; clear
   Send, ^c ; simulate Ctrl+C (=selection in clipboard)
   selection = %Clipboard% ; save the content of the clipboard
   Clipboard = %tmp% ; restore old content of the clipboard
   return selection
}

#g::
    selection := GetSelectedText()
    if selection <>
        Run, "http://www.google.com/search?q=%selection%"
    else
        Run, "http://www.google.com/"
return

#w::
	selection := GetSelectedText()
    if selection <>
        Run, "http://dict.leo.org/ende?lp=ende&lang=de&searchLoc=0&cmpType=relaxed&sectHdr=on&spellToler=&search=%selection%"
    else
        Run, "http://dict.leo.org"
return



+!s::
	selection := GetSelectedText()
;    if selection <>
        Run, https://na8.salesforce.com/search/SearchResults?searchType=2&sen=0&str=%selection%&search=Search
;	else
;	    Run, https://na8.salesforce.com/search/AdvancedSearch
return



PRINTSCREEN::
 	Run, C:\Windows\system32\SnippingTool.exe
return

^!a::
Edit "C:\Users\jehrlich\Documents\_Tools\AutoHot\keys.ahk"
return

Insert::
bak = %clipboard%
Send, ^c
clipboard = %bak%`r`n%clipboard%
return


; # NOTEPAD++
^!n::
IfWinExist Notepad++
	WinActivate
else
	Run Notepad++
return


; # OUTLOOK
^!o::
IfWinExist ahk_class rctrl_renwnd32
	WinActivate
else
	Run Outlook
return


; # TOTAL COMMANDER
^!t::
IfWinExist Total Commander
	WinActivate
else
	Run C:\totalcmd\TOTALCMD64.EXE
return


; # CHROME
^!c::
IfWinExist ahk_class Chrome_WidgetWin_0
	WinActivate
else
	Run chrome
return





; ########################################
; # END                                  #
; ########################################
