FROM public.ecr.aws/lambda/python:3.13

# copy requirements.txt and install dependencies
COPY requirements.txt ${LAMBDA_TASK_ROOT}
RUN pip install -r requirements.txt -t ${LAMBDA_TASK_ROOT}

# copy main.py
COPY main.py ${LAMBDA_TASK_ROOT}

CMD ["main.handler"]
