package template.microservice_a.trace # Change "template.microservice_a" to your app + microservice name

import data.trace.get_attributes

attributes := get_attributes([
    # "ATRIBUTE_NAME", # Reason for the added attribute
])