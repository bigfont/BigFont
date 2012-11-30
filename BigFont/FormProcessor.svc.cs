using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Collections.Specialized;

namespace BigFont
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FormProcessor" in code, svc and config file together.
    public class FormProcessor : IFormProcessor
    {        
        public void ProcessForm(NameValueCollection formData)
        {
            int i = 0;
            ++i;
        }
    }
}
