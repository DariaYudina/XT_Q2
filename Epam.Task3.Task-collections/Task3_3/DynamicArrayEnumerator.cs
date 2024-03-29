﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Epam.Task3.Task3_3and4;

namespace Epam.Task3.Task3_3and4.Task_collections
{
    internal class DynamicArrayEnumerator<T> : IEnumerator<T>
    {
        protected int position = -1;
        protected DynamicArray<T> dynamicArray;

        public DynamicArrayEnumerator(DynamicArray<T> dynamicArray)
        {
            this.dynamicArray = dynamicArray;
        }

        public T Current
        {
            get { return this.dynamicArray[position]; }
        }

        public virtual bool MoveNext()
        {
            position++;
            return (position < this.dynamicArray.Count);
        }

        public void Reset()
        {
            position = -1;
        }


        bool IEnumerator.MoveNext()
        {
            return MoveNext();
        }

        void IEnumerator.Reset()
        {
            Reset();
        }

        T IEnumerator<T>.Current
        {
            get { throw new NotImplementedException(); }
        }

        object IEnumerator.Current
        { get { return Current; } }

        void IDisposable.Dispose()
        {
        }
    }
}
