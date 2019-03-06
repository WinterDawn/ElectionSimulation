#ifndef _ELECTION_H_
#define _ELECTION_H_

#include <string>
#include <vector>

using namespace std;

/** 

*/
enum class Party {
    None,
    CPC,
    RCCK,
    CDL, 
};

struct Candidate {
    string names;
    Party affiliation;
    int id;
};

class Election {
    public:
        Election();

        vector<Candidate> get_candidates() const { return candidates_; }

        void registration();
        void campaign();
        void vote();
        void report();

    protected:
        vector<Candidate> candidates_;
};

class RepresentativeElection : public Election {

};

class DirectElection : public Election {

};



#endif  // _ELECTION_H_