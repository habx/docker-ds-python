FROM continuumio/anaconda3:4.4.0
RUN apt-get update && apt-get install -y graphviz build-essential unzip libqt4-dev && rm -Rf /var/cache/apt
RUN conda install -y python=3.5
RUN pip install shapely matplotlib numpy pandas geopandas sympy ortools scipy cma pybrain gprof2dot
RUN wget https://github.com/IfcOpenShell/IfcOpenShell/releases/download/v0.5.0-preview2/ifcopenshell-python35-master-9ad68db-linux64.zip && \
    unzip ifcopenshell-python35-master-9ad68db-linux64.zip -d /opt/conda/lib/python3.5/site-packages
RUN conda install -y -c dlr-sc pythonocc-core
