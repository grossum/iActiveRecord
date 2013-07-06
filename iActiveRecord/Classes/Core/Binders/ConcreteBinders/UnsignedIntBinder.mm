//
// Created by Alex Denisov on 06.07.13.
// Copyright (c) 2013 okolodev.org. All rights reserved.
//

#include "UnsignedIntBinder.h"

namespace AR {

    bool Binder<unsigned int>::bind(sqlite3_stmt *statement, const int columnIndex, const id value) const
    {
        return sqlite3_bind_int(statement, columnIndex, [value unsignedIntValue]) == SQLITE_OK;
    }

};