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
 
 
 
