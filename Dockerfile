FROM python:2.7
RUN apt-get update && apt-get install -y graphviz jq && rm -Rf /var/cache/apt && pip install \
  matplotlib==2.2.2 \
  numpy==1.14.5 \
  shapely==1.6.4.post2 \
  ortools==6.7.4973 \
  dill==0.2.8.2 \
  Dijkstar==2.4.0 \
  networkx==2.2 \
  aenum==2.1.2 \
  pytest \
  pylint==2.2.2
