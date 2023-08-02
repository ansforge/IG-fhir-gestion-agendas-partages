Instance: GAP-Appointment-description
InstanceOf: SearchParameter
Usage: #definition
* name = "GAP_Appointment_description"
* status = #active
* description = "Comment or title of the appointment"
* code = #description
* base = #Appointment
* type = #string
* expression = "Appointment.comment | Appointment.description"
* xpath = "f:Appointment/f:comment | f:Appointment/f:description"
* xpathUsage = #normal
* multipleOr = false
* multipleAnd = false