﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Types
{
    public struct ParmStruct
    {
        public string Name;
        public object Value;
        public int Size;
        public SqlDbType DataType;
        public ParameterDirection Direction;

        public ParmStruct(string name, object value, int size, SqlDbType dataType, ParameterDirection direction)
        {
            Name = name;
            Value = value;
            Size = size;
            DataType = dataType;
            Direction = direction;
        }
    }

    #region ENUMS

    public enum Division
    {
        Atlantic,
        Central,
        SouthEast,
        NorthEast,
        Pacific,
        Southwest
    }

    #endregion
}

