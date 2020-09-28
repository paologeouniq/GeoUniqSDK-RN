using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Geouniq.Beta2.RNGeouniqBeta2
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNGeouniqBeta2Module : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNGeouniqBeta2Module"/>.
        /// </summary>
        internal RNGeouniqBeta2Module()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNGeouniqBeta2";
            }
        }
    }
}
