import numpy as np


def handler(event, context):
    print(event)
    print(context)

    random_array = np.random.randint(0, 100, size=(10, 10))
    return {
        "statusCode": 200,
        "body": random_array.tolist()
    }
