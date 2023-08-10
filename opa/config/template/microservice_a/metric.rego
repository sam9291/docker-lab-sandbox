package template.microservice_a.metric # Change "template.microservice_a" to your app + microservice name

import data.metric.get_attributes

attributes := get_attributes([
    # "ATRIBUTE_NAME", # Reason for the added attribute
])