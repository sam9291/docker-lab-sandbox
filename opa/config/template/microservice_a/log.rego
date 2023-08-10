package template.microservice_a.log # Change "template.microservice_a" to your app + microservice name

import data.log.get_attributes

attributes := get_attributes([
    # "ATRIBUTE_NAME", # Reason for the added attribute
])