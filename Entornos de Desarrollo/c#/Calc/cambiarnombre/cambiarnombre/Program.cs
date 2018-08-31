using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RenameIdentifier { 
}
class ProtoClassA
{
    // Invoke on 'MethodB'.
    public void MethodB(int i, bool b) { }
}
class ProtoClassC
{
    void D()
    {
        ProtoClassA MyClassA = new ProtoClassA();
        // Invoke on 'MethodB'.
        MyClassA.MethodB(0, false);
    }
}