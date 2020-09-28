using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Geouniq.Test.RNGeouniqTest
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNGeouniqTestModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNGeouniqTestModule"/>.
        /// </summary>
        internal RNGeouniqTestModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNGeouniqTest";
            }
        }
    }
}
