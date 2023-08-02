Instance: GAP-Slot-latestStart
InstanceOf: SearchParameter
Usage: #definition
* name = "GAP_Slot_latestStart"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Slot-start"
* status = #draft
* experimental = false
* date = "2021-12-01"
* publisher = "ANS"
* description = "latest start of a potential appointment"
* code = #start
* base = #Slot
* type = #date
* expression = "Slot.start"
* xpath = "f:Slot/f:start"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* comparator[0] = #lt
* comparator[+] = #le