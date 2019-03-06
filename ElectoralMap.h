#ifndef _ELECTORAL_MAP_H_
#define _ELECTORAL_MAP_H_

#include "District.h"
/** 

*/

class ElectoralMap {
    public:

        static ElectoralMap& GetInstance() {
            static ElectoralMap instance; // guaranteed to be destroyed
            return instance;
        }

        ElectoralMap(ElectoralMap const&) = delete; // copy constructor
        void operator=(ElectoralMap const&) = delete; // assignment operator

    private:
        ElectoralMap(); 
};  


#endif  // _ELECTORAL_MAP_H_