package template.microservice_b.metric # Change "template.microservice_b" to your app + microservice name

import data.metric.get_attributes

attributes := get_attributes([
    # "ATRIBUTE_NAME", # Reason for the added attribute
])