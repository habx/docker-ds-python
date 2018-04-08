FROM python:2.7
RUN apt-get update && apt-get install -y graphviz && rm -Rf /var/cache/apt
RUN pip install shapely matplotlib numpy pandas geopandas sympy ortools scipy cma pybrain gprof2dot
