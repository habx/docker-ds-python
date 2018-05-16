FROM continuumio/anaconda:5.1.0
RUN apt-get update && apt-get install -y graphviz build-essential unzip libqt4-dev && rm -Rf /var/cache/apt
RUN pip install shapely matplotlib numpy pandas geopandas sympy ortools scipy cma pybrain gprof2dot
RUN wget https://github.com/IfcOpenShell/IfcOpenShell/releases/download/v0.5.0-preview2/ifcopenshell-python27-master-9ad68db-linux64.zip && \
    unzip ifcopenshell-python27-master-9ad68db-linux64.zip -d /opt/conda/lib/python2.7/site-packages
RUN conda install -y -c dlr-sc pythonocc-core
