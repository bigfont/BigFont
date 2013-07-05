using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ServiceModel.Configuration;

namespace BigFont
{
    public class FormProcessingBehaviorExtensionElement : BehaviorExtensionElement
    {
        protected override object CreateBehavior()
        {
            return new FormProcessingBehavior();
        }

        public override Type BehaviorType
        {
            get { return typeof(FormProcessingBehavior); }
        }
    }
}