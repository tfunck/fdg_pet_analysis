FROM antsx:ants
MAINTAINER <your@email.com>

RUN mkdir /opt/ /opt/bin /opt/turku /opt/turku/build /opt/turku/src
RUN wget -O /opt/turku/src.tar.gz https://www.dropbox.com/sh/l22cilo1ze25rj4/AAAhJ3ZyzVuAQ_tzNIUl_Ol0a #This is for the Turku tools. This line may not work exactly as is because this is just the link to their Dropbox.
RUN tar -zxf /opt/turku/src.tar.gz -C /opt/turku/src/
RUN mv /opt/turku/src/bin/* /opt/bin/
RUN rm -rf /opt/turku

RUN useradd -ms /bin/bash user
RUN chown -R user:user /opt/bin/ && chmod 733 /opt/bin/*

# ENVIRONMENT VARIABLES
ENV PATH /opt/bin:$PATH
ENV ANTSPATH /opt/bin
