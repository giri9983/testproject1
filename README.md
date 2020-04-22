# testproject1

Requirements: Try using Kendo UI Elements.
Pages required: Login Page. Put validation for user name and password.
                Home Page: Based on logged in user, display a list of records using Grid.
                           Grid columns: Device Name, ID, Date Added
                           Link on Device ID should open new page with all the details of device.
                           
                Master page: or Layout view: This should have few partial views. 
                First Partial View: Different type of filters (Mostly combo boxes with ability to multi select)
                                    Ex: Device Type, Organization, Site (like India, CHina, USA)
                                    When an option is selected in filter, display number of items selected next to filter.
                                    Have Apply Cancel buttons. When a filter changes, then Enable Apply Cancel buttons.
                                    Once User clicks on Apply, disable them after loading data
                                    Once user clicks on cancel button. Remove all changes to filters and keep previous filters only.Then disable buttons
                                    
                Second Partial View: Selected filters should be displayed here from previous partial view. We should have "X" button next to each selected filteritem to remove that filter selection.
                
                Device Details Page: When user clicks on Device ID in Home Page grid, we should show this page with all the details of device. This page allows view and edit of device details. When user clicks on edit button, we should display all fields in edit mode.
                Allow user to display attachments in grid form. Grid columns: Device ID, Name, Attachment (allow to display multiple attachments).
                Also Allow user to upload documents in edit mode.
                
 Table Structure:
 Users: username, last name, first name,password, role, groupID
 devices: ID, name, manufacturer, service date, calibration date,owner,location, device type, device site,Status (Active, sold, trash), Organization
 
  files: Store files in Web server only in Attachments/DeviceID folder
 
 
 Requirements: 4/22/2020

Filter Section: 
      Apply button: selected filters should apply to grid. Display selected filters in “Selected filters” area.
                                Remember all changes done (put them in session memory or something like that).
Disable apply button once applied. Enable only when a new filter option is selected.
      Cancel button: when user click on cancel button, only clear selection which were not applied yet.
                                 I mean in a filter we have 10 choices. I select choice1, choice2. Click on apply button.
                                Now, I select choice 3 and click on cancel button. This should just remove choice 3 from filter. Do not refresh grid or do not change anything in “selected filters”.
 Disable button once clicked on cancel. Enable only when a new filter option is selected.

Grid: Make it to occupy full width and height of page (I mean remaining)
           Device ID in grid should have a link. Click on this should open a new browser window (not tab).
          New pop-up should display device details.
Device details pop-up:
             Have 2 tabs
             1st tab display details win  “name”: value  format. (convert read-only values to editable when we click on edit button)
             2nd tab display a grid with files
                           Grid columns.  Year, list of files as attachments, calibration due date
                           In edit mode, bring a control that can be used to attach documents. Store them in folder root level with following folder structure. (root/attachments/Devices/Device ID/Year)


Selected filters section: display x per filter. not per choice. show selected options in comma separated. if string is more than 30 characters, add "..." at the end and show whole value on tooltip
