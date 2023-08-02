Instance: GAP-Appointment-latestStart
InstanceOf: SearchParameter
Usage: #definition
* name = "GAP_Appointment_latestStart"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Appointment-start"
* status = #active
* experimental = false
* description = "latest start of an appointment"
* code = #start
* base = #Appointment
* type = #date
* expression = "Appointment.start"
* xpath = "f:Appointment/f:start"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* comparator[0] = #lt
* comparator[+] = #le