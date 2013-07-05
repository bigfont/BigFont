using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Collections.Specialized;

namespace BigFont
{    
    [ServiceContract]          
    public interface IFormProcessor
    {
        [OperationContract]        
        [WebInvoke(Method="POST")]
        void ProcessForm(NameValueCollection formData);
    }
}
