# sunwait
#
# 08/12/2014  IFC  0.6  No changes since 0.5
# 02/05/2015  IFC  0.7  No changes since 0.5, still
#


C=g++
CFLAGS=-c -Wall 
LDFLAGS= -lm
SOURCES=sunwait.cpp sunriset.cpp print.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=sunwait

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(C) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(C) $(CFLAGS) $< -o $@

clean:
	rm -f *.o sunwait

install:
	install -D -m 755 sunwait $(DESTDIR)/usr/bin/sunwait
