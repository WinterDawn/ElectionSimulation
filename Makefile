CXX = g++
CXXFLAGS	= -std=c++11 -Wall

all: TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o test-main.o election test # update to include shop when you have a main.cpp

clean:
	rm TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o election test 

# update to include a test target when you have a test.cpp
test: test.cpp test-main.o TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o
	$(CXX) $(CXXFLAGS) test.cpp test-main.o TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o -o test
	
election: main.cpp TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o
	$(CXX) $(CXXFLAGS) main.cpp TextUI.o Candidate.o Party.o Election.o District.o ElectoralMap.o -o election

test-main.o: test-main.cpp
	$(CXX) $(CXXFLAGS) -c test-main.cpp

TextUI.o: TextUI.cpp
	$(CXX) $(CXXFLAGS) -c TextUI.cpp

Candidate.o: Candidate.cpp
	$(CXX) $(CXXFLAGS) -c Candidate.cpp

Party.o: Party.cpp
	$(CXX) $(CXXFLAGS) -c Party.cpp

Election.o: Election.cpp
	$(CXX) $(CXXFLAGS) -c Election.cpp

District.o: District.cpp
	$(CXX) $(CXXFLAGS) -c District.cpp

ElectoralMap.o: ElectoralMap.cpp
	$(CXX) $(CXXFLAGS) -c ElectoralMap.cpp

