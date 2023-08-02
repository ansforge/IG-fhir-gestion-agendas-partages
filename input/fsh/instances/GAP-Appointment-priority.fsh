Instance: GAP-Appointment-priority
InstanceOf: SearchParameter
Usage: #definition
* name = "GAP_Appointment_priority"
* status = #draft
* date = "2021-12-01"
* publisher = "ANS"
* description = "Priority of the appointment"
* code = #priority
* base = #Appointment
* type = #token
* expression = "Appointment.priority"
* xpath = "f:Appointment/f:priority"
* xpathUsage = #normal
* multipleOr = false
* multipleAnd = false